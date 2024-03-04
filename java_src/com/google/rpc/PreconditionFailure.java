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
public final class PreconditionFailure extends GeneratedMessageV3 implements r1 {
    private static final PreconditionFailure DEFAULT_INSTANCE = new PreconditionFailure();
    private static final e2<PreconditionFailure> PARSER = new a();
    public static final int VIOLATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Violation> violations_;

    /* loaded from: classes3.dex */
    public static final class Violation extends GeneratedMessageV3 implements c {
        public static final int DESCRIPTION_FIELD_NUMBER = 3;
        public static final int SUBJECT_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object description_;
        private byte memoizedIsInitialized;
        private volatile Object subject_;
        private volatile Object type_;
        private static final Violation DEFAULT_INSTANCE = new Violation();
        private static final e2<Violation> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<Violation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Violation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Violation(pVar, f0Var, null);
            }
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f15569e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15570f;

            /* renamed from: g  reason: collision with root package name */
            private Object f15571g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.b.f15609p.d(Violation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Violation build() {
                Violation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Violation I() {
                Violation violation = new Violation(this, (a) null);
                violation.type_ = this.f15569e;
                violation.subject_ = this.f15570f;
                violation.description_ = this.f15571g;
                Q();
                return violation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Violation getDefaultInstanceForType() {
                return Violation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.rpc.PreconditionFailure.Violation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.PreconditionFailure.Violation.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.PreconditionFailure$Violation r3 = (com.google.rpc.PreconditionFailure.Violation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.PreconditionFailure$Violation r4 = (com.google.rpc.PreconditionFailure.Violation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.PreconditionFailure.Violation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.PreconditionFailure$Violation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Violation) {
                    return g0((Violation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Violation violation) {
                if (violation == Violation.getDefaultInstance()) {
                    return this;
                }
                if (!violation.getType().isEmpty()) {
                    this.f15569e = violation.type_;
                    R();
                }
                if (!violation.getSubject().isEmpty()) {
                    this.f15570f = violation.subject_;
                    R();
                }
                if (!violation.getDescription().isEmpty()) {
                    this.f15571g = violation.description_;
                    R();
                }
                z(((GeneratedMessageV3) violation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.b.f15608o;
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
                this.f15569e = "";
                this.f15570f = "";
                this.f15571g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15569e = "";
                this.f15570f = "";
                this.f15571g = "";
                b0();
            }
        }

        /* synthetic */ Violation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Violation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return com.google.rpc.b.f15608o;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Violation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Violation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Violation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Violation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Violation)) {
                return super.equals(obj);
            }
            Violation violation = (Violation) obj;
            return getType().equals(violation.getType()) && getSubject().equals(violation.getSubject()) && getDescription().equals(violation.getDescription()) && this.unknownFields.equals(violation.unknownFields);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Violation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.type_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.type_);
            if (!GeneratedMessageV3.isStringEmpty(this.subject_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.subject_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(3, this.description_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getSubject() {
            Object obj = this.subject_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.subject_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getSubjectBytes() {
            Object obj = this.subject_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.subject_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getType() {
            Object obj = this.type_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.type_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
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
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + getSubject().hashCode()) * 37) + 3) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.b.f15609p.d(Violation.class, b.class);
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
            return new Violation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.type_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.subject_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.subject_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.description_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Violation(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Violation violation) {
            return DEFAULT_INSTANCE.toBuilder().g0(violation);
        }

        public static Violation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Violation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Violation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Violation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Violation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Violation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Violation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Violation() {
            this.memoizedIsInitialized = (byte) -1;
            this.type_ = "";
            this.subject_ = "";
            this.description_ = "";
        }

        public static Violation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Violation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Violation parseFrom(InputStream inputStream) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Violation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Violation parseFrom(p pVar) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        private Violation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                this.type_ = pVar.K();
                            } else if (L == 18) {
                                this.subject_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.description_ = pVar.K();
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

        public static Violation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<PreconditionFailure> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PreconditionFailure m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PreconditionFailure(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15572e;

        /* renamed from: f  reason: collision with root package name */
        private List<Violation> f15573f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Violation, Violation.b, c> f15574g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15572e & 1) == 0) {
                this.f15573f = new ArrayList(this.f15573f);
                this.f15572e |= 1;
            }
        }

        private l2<Violation, Violation.b, c> d0() {
            if (this.f15574g == null) {
                this.f15574g = new l2<>(this.f15573f, (this.f15572e & 1) != 0, H(), O());
                this.f15573f = null;
            }
            return this.f15574g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.b.f15607n.d(PreconditionFailure.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PreconditionFailure build() {
            PreconditionFailure I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PreconditionFailure I() {
            PreconditionFailure preconditionFailure = new PreconditionFailure(this, (a) null);
            int i9 = this.f15572e;
            l2<Violation, Violation.b, c> l2Var = this.f15574g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f15573f = Collections.unmodifiableList(this.f15573f);
                    this.f15572e &= -2;
                }
                preconditionFailure.violations_ = this.f15573f;
            } else {
                preconditionFailure.violations_ = l2Var.e();
            }
            Q();
            return preconditionFailure;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public PreconditionFailure getDefaultInstanceForType() {
            return PreconditionFailure.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.PreconditionFailure.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.PreconditionFailure.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.PreconditionFailure r3 = (com.google.rpc.PreconditionFailure) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.rpc.PreconditionFailure r4 = (com.google.rpc.PreconditionFailure) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.PreconditionFailure.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.PreconditionFailure$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.b.f15606m;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof PreconditionFailure) {
                return i0((PreconditionFailure) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(PreconditionFailure preconditionFailure) {
            if (preconditionFailure == PreconditionFailure.getDefaultInstance()) {
                return this;
            }
            if (this.f15574g == null) {
                if (!preconditionFailure.violations_.isEmpty()) {
                    if (this.f15573f.isEmpty()) {
                        this.f15573f = preconditionFailure.violations_;
                        this.f15572e &= -2;
                    } else {
                        a0();
                        this.f15573f.addAll(preconditionFailure.violations_);
                    }
                    R();
                }
            } else if (!preconditionFailure.violations_.isEmpty()) {
                if (this.f15574g.k()) {
                    this.f15574g.f();
                    this.f15574g = null;
                    this.f15573f = preconditionFailure.violations_;
                    this.f15572e &= -2;
                    this.f15574g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f15574g.b(preconditionFailure.violations_);
                }
            }
            z(((GeneratedMessageV3) preconditionFailure).unknownFields);
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
            this.f15573f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15573f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes3.dex */
    public interface c extends r1 {
    }

    /* synthetic */ PreconditionFailure(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PreconditionFailure getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.b.f15606m;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PreconditionFailure parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PreconditionFailure parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PreconditionFailure> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PreconditionFailure)) {
            return super.equals(obj);
        }
        PreconditionFailure preconditionFailure = (PreconditionFailure) obj;
        return getViolationsList().equals(preconditionFailure.getViolationsList()) && this.unknownFields.equals(preconditionFailure.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PreconditionFailure> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.violations_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.violations_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Violation getViolations(int i9) {
        return this.violations_.get(i9);
    }

    public int getViolationsCount() {
        return this.violations_.size();
    }

    public List<Violation> getViolationsList() {
        return this.violations_;
    }

    public c getViolationsOrBuilder(int i9) {
        return this.violations_.get(i9);
    }

    public List<? extends c> getViolationsOrBuilderList() {
        return this.violations_;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getViolationsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getViolationsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.rpc.b.f15607n.d(PreconditionFailure.class, b.class);
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
        return new PreconditionFailure();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.violations_.size(); i9++) {
            codedOutputStream.L0(1, this.violations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PreconditionFailure(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(PreconditionFailure preconditionFailure) {
        return DEFAULT_INSTANCE.toBuilder().i0(preconditionFailure);
    }

    public static PreconditionFailure parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PreconditionFailure parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PreconditionFailure(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PreconditionFailure parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PreconditionFailure getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static PreconditionFailure parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private PreconditionFailure() {
        this.memoizedIsInitialized = (byte) -1;
        this.violations_ = Collections.emptyList();
    }

    public static PreconditionFailure parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static PreconditionFailure parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PreconditionFailure parseFrom(InputStream inputStream) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private PreconditionFailure(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.violations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.violations_.add(pVar.B(Violation.parser(), f0Var));
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
                    this.violations_ = Collections.unmodifiableList(this.violations_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static PreconditionFailure parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static PreconditionFailure parseFrom(p pVar) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PreconditionFailure parseFrom(p pVar, f0 f0Var) throws IOException {
        return (PreconditionFailure) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
