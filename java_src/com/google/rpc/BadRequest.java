package com.google.rpc;

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
import com.google.protobuf.p;
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class BadRequest extends GeneratedMessageV3 implements r1 {
    public static final int FIELD_VIOLATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<FieldViolation> fieldViolations_;
    private byte memoizedIsInitialized;
    private static final BadRequest DEFAULT_INSTANCE = new BadRequest();
    private static final e2<BadRequest> PARSER = new a();

    /* loaded from: classes3.dex */
    public static final class FieldViolation extends GeneratedMessageV3 implements c {
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        public static final int FIELD_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object description_;
        private volatile Object field_;
        private byte memoizedIsInitialized;
        private static final FieldViolation DEFAULT_INSTANCE = new FieldViolation();
        private static final e2<FieldViolation> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<FieldViolation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public FieldViolation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new FieldViolation(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f15550e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15551f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.b.f15613t.d(FieldViolation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public FieldViolation build() {
                FieldViolation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public FieldViolation I() {
                FieldViolation fieldViolation = new FieldViolation(this, (a) null);
                fieldViolation.field_ = this.f15550e;
                fieldViolation.description_ = this.f15551f;
                Q();
                return fieldViolation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public FieldViolation getDefaultInstanceForType() {
                return FieldViolation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.BadRequest.FieldViolation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.BadRequest.FieldViolation.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.BadRequest$FieldViolation r3 = (com.google.rpc.BadRequest.FieldViolation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.BadRequest$FieldViolation r4 = (com.google.rpc.BadRequest.FieldViolation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.BadRequest.FieldViolation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.BadRequest$FieldViolation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof FieldViolation) {
                    return g0((FieldViolation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(FieldViolation fieldViolation) {
                if (fieldViolation == FieldViolation.getDefaultInstance()) {
                    return this;
                }
                if (!fieldViolation.getField().isEmpty()) {
                    this.f15550e = fieldViolation.field_;
                    R();
                }
                if (!fieldViolation.getDescription().isEmpty()) {
                    this.f15551f = fieldViolation.description_;
                    R();
                }
                z(((GeneratedMessageV3) fieldViolation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.b.f15612s;
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

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f15550e = "";
                this.f15551f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15550e = "";
                this.f15551f = "";
                b0();
            }
        }

        /* synthetic */ FieldViolation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static FieldViolation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.b.f15612s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FieldViolation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FieldViolation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<FieldViolation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldViolation)) {
                return super.equals(obj);
            }
            FieldViolation fieldViolation = (FieldViolation) obj;
            return getField().equals(fieldViolation.getField()) && getDescription().equals(fieldViolation.getDescription()) && this.unknownFields.equals(fieldViolation.unknownFields);
        }

        public String getDescription() {
            Object obj = this.description_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.description_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getDescriptionBytes() {
            Object obj = this.description_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.description_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getField() {
            Object obj = this.field_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.field_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getFieldBytes() {
            Object obj = this.field_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.field_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<FieldViolation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.field_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.field_);
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.description_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getField().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.b.f15613t.d(FieldViolation.class, b.class);
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
            return new FieldViolation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.field_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.field_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ FieldViolation(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(FieldViolation fieldViolation) {
            return DEFAULT_INSTANCE.toBuilder().g0(fieldViolation);
        }

        public static FieldViolation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static FieldViolation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private FieldViolation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FieldViolation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public FieldViolation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static FieldViolation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private FieldViolation() {
            this.memoizedIsInitialized = (byte) -1;
            this.field_ = "";
            this.description_ = "";
        }

        public static FieldViolation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static FieldViolation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static FieldViolation parseFrom(InputStream inputStream) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FieldViolation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private FieldViolation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.field_ = pVar.K();
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.description_ = pVar.K();
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

        public static FieldViolation parseFrom(p pVar) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static FieldViolation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (FieldViolation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<BadRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BadRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new BadRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15552e;

        /* renamed from: f  reason: collision with root package name */
        private List<FieldViolation> f15553f;

        /* renamed from: g  reason: collision with root package name */
        private l2<FieldViolation, FieldViolation.b, c> f15554g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15552e & 1) == 0) {
                this.f15553f = new ArrayList(this.f15553f);
                this.f15552e |= 1;
            }
        }

        private l2<FieldViolation, FieldViolation.b, c> d0() {
            if (this.f15554g == null) {
                this.f15554g = new l2<>(this.f15553f, (this.f15552e & 1) != 0, H(), O());
                this.f15553f = null;
            }
            return this.f15554g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.b.f15611r.d(BadRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BadRequest build() {
            BadRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BadRequest I() {
            BadRequest badRequest = new BadRequest(this, (a) null);
            int i9 = this.f15552e;
            l2<FieldViolation, FieldViolation.b, c> l2Var = this.f15554g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f15553f = Collections.unmodifiableList(this.f15553f);
                    this.f15552e &= -2;
                }
                badRequest.fieldViolations_ = this.f15553f;
            } else {
                badRequest.fieldViolations_ = l2Var.e();
            }
            Q();
            return badRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public BadRequest getDefaultInstanceForType() {
            return BadRequest.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.BadRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.BadRequest.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.BadRequest r3 = (com.google.rpc.BadRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.rpc.BadRequest r4 = (com.google.rpc.BadRequest) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.BadRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.BadRequest$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.b.f15610q;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof BadRequest) {
                return i0((BadRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(BadRequest badRequest) {
            if (badRequest == BadRequest.getDefaultInstance()) {
                return this;
            }
            if (this.f15554g == null) {
                if (!badRequest.fieldViolations_.isEmpty()) {
                    if (this.f15553f.isEmpty()) {
                        this.f15553f = badRequest.fieldViolations_;
                        this.f15552e &= -2;
                    } else {
                        a0();
                        this.f15553f.addAll(badRequest.fieldViolations_);
                    }
                    R();
                }
            } else if (!badRequest.fieldViolations_.isEmpty()) {
                if (this.f15554g.k()) {
                    this.f15554g.f();
                    this.f15554g = null;
                    this.f15553f = badRequest.fieldViolations_;
                    this.f15552e &= -2;
                    this.f15554g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f15554g.b(badRequest.fieldViolations_);
                }
            }
            z(((GeneratedMessageV3) badRequest).unknownFields);
            R();
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

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f15553f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15553f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes3.dex */
    public interface c extends r1 {
    }

    /* synthetic */ BadRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BadRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.b.f15610q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BadRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BadRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BadRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BadRequest)) {
            return super.equals(obj);
        }
        BadRequest badRequest = (BadRequest) obj;
        return getFieldViolationsList().equals(badRequest.getFieldViolationsList()) && this.unknownFields.equals(badRequest.unknownFields);
    }

    public FieldViolation getFieldViolations(int i9) {
        return this.fieldViolations_.get(i9);
    }

    public int getFieldViolationsCount() {
        return this.fieldViolations_.size();
    }

    public List<FieldViolation> getFieldViolationsList() {
        return this.fieldViolations_;
    }

    public c getFieldViolationsOrBuilder(int i9) {
        return this.fieldViolations_.get(i9);
    }

    public List<? extends c> getFieldViolationsOrBuilderList() {
        return this.fieldViolations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BadRequest> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.fieldViolations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.fieldViolations_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getFieldViolationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getFieldViolationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.rpc.b.f15611r.d(BadRequest.class, b.class);
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
        return new BadRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.fieldViolations_.size(); i9++) {
            codedOutputStream.L0(1, this.fieldViolations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BadRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(BadRequest badRequest) {
        return DEFAULT_INSTANCE.toBuilder().i0(badRequest);
    }

    public static BadRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BadRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BadRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BadRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BadRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static BadRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private BadRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.fieldViolations_ = Collections.emptyList();
    }

    public static BadRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static BadRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static BadRequest parseFrom(InputStream inputStream) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private BadRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.fieldViolations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.fieldViolations_.add(pVar.B(FieldViolation.parser(), f0Var));
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.fieldViolations_ = Collections.unmodifiableList(this.fieldViolations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static BadRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BadRequest parseFrom(p pVar) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BadRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (BadRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
