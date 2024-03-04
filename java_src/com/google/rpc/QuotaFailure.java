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
public final class QuotaFailure extends GeneratedMessageV3 implements r1 {
    private static final QuotaFailure DEFAULT_INSTANCE = new QuotaFailure();
    private static final e2<QuotaFailure> PARSER = new a();
    public static final int VIOLATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Violation> violations_;

    /* loaded from: classes3.dex */
    public static final class Violation extends GeneratedMessageV3 implements c {
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        public static final int SUBJECT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object description_;
        private byte memoizedIsInitialized;
        private volatile Object subject_;
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
            private Object f15575e;

            /* renamed from: f  reason: collision with root package name */
            private Object f15576f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return com.google.rpc.b.f15601h.d(Violation.class, b.class);
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
                violation.subject_ = this.f15575e;
                violation.description_ = this.f15576f;
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
            public com.google.rpc.QuotaFailure.Violation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.rpc.QuotaFailure.Violation.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.rpc.QuotaFailure$Violation r3 = (com.google.rpc.QuotaFailure.Violation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.rpc.QuotaFailure$Violation r4 = (com.google.rpc.QuotaFailure.Violation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.QuotaFailure.Violation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.QuotaFailure$Violation$b");
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
                if (!violation.getSubject().isEmpty()) {
                    this.f15575e = violation.subject_;
                    R();
                }
                if (!violation.getDescription().isEmpty()) {
                    this.f15576f = violation.description_;
                    R();
                }
                z(((GeneratedMessageV3) violation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return com.google.rpc.b.f15600g;
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
                this.f15575e = "";
                this.f15576f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f15575e = "";
                this.f15576f = "";
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
            return com.google.rpc.b.f15600g;
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
            return getSubject().equals(violation.getSubject()) && getDescription().equals(violation.getDescription()) && this.unknownFields.equals(violation.unknownFields);
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
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.subject_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.subject_);
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.description_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSubject().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return com.google.rpc.b.f15601h.d(Violation.class, b.class);
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
            if (!GeneratedMessageV3.isStringEmpty(this.subject_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.subject_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
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

        private Violation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.subject_ = pVar.K();
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

        public static Violation parseFrom(p pVar) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Violation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Violation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.google.protobuf.c<QuotaFailure> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public QuotaFailure m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new QuotaFailure(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f15577e;

        /* renamed from: f  reason: collision with root package name */
        private List<Violation> f15578f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Violation, Violation.b, c> f15579g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f15577e & 1) == 0) {
                this.f15578f = new ArrayList(this.f15578f);
                this.f15577e |= 1;
            }
        }

        private l2<Violation, Violation.b, c> d0() {
            if (this.f15579g == null) {
                this.f15579g = new l2<>(this.f15578f, (this.f15577e & 1) != 0, H(), O());
                this.f15578f = null;
            }
            return this.f15579g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.rpc.b.f15599f.d(QuotaFailure.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public QuotaFailure build() {
            QuotaFailure I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public QuotaFailure I() {
            QuotaFailure quotaFailure = new QuotaFailure(this, (a) null);
            int i9 = this.f15577e;
            l2<Violation, Violation.b, c> l2Var = this.f15579g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f15578f = Collections.unmodifiableList(this.f15578f);
                    this.f15577e &= -2;
                }
                quotaFailure.violations_ = this.f15578f;
            } else {
                quotaFailure.violations_ = l2Var.e();
            }
            Q();
            return quotaFailure;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public QuotaFailure getDefaultInstanceForType() {
            return QuotaFailure.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.rpc.QuotaFailure.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.rpc.QuotaFailure.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.rpc.QuotaFailure r3 = (com.google.rpc.QuotaFailure) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.rpc.QuotaFailure r4 = (com.google.rpc.QuotaFailure) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.rpc.QuotaFailure.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.rpc.QuotaFailure$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.rpc.b.f15598e;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof QuotaFailure) {
                return i0((QuotaFailure) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(QuotaFailure quotaFailure) {
            if (quotaFailure == QuotaFailure.getDefaultInstance()) {
                return this;
            }
            if (this.f15579g == null) {
                if (!quotaFailure.violations_.isEmpty()) {
                    if (this.f15578f.isEmpty()) {
                        this.f15578f = quotaFailure.violations_;
                        this.f15577e &= -2;
                    } else {
                        a0();
                        this.f15578f.addAll(quotaFailure.violations_);
                    }
                    R();
                }
            } else if (!quotaFailure.violations_.isEmpty()) {
                if (this.f15579g.k()) {
                    this.f15579g.f();
                    this.f15579g = null;
                    this.f15578f = quotaFailure.violations_;
                    this.f15577e &= -2;
                    this.f15579g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f15579g.b(quotaFailure.violations_);
                }
            }
            z(((GeneratedMessageV3) quotaFailure).unknownFields);
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
            this.f15578f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f15578f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes3.dex */
    public interface c extends r1 {
    }

    /* synthetic */ QuotaFailure(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static QuotaFailure getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.rpc.b.f15598e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static QuotaFailure parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static QuotaFailure parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<QuotaFailure> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QuotaFailure)) {
            return super.equals(obj);
        }
        QuotaFailure quotaFailure = (QuotaFailure) obj;
        return getViolationsList().equals(quotaFailure.getViolationsList()) && this.unknownFields.equals(quotaFailure.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<QuotaFailure> getParserForType() {
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
        return com.google.rpc.b.f15599f.d(QuotaFailure.class, b.class);
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
        return new QuotaFailure();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.violations_.size(); i9++) {
            codedOutputStream.L0(1, this.violations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ QuotaFailure(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(QuotaFailure quotaFailure) {
        return DEFAULT_INSTANCE.toBuilder().i0(quotaFailure);
    }

    public static QuotaFailure parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuotaFailure parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private QuotaFailure(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuotaFailure parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public QuotaFailure getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static QuotaFailure parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private QuotaFailure() {
        this.memoizedIsInitialized = (byte) -1;
        this.violations_ = Collections.emptyList();
    }

    public static QuotaFailure parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static QuotaFailure parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static QuotaFailure parseFrom(InputStream inputStream) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private QuotaFailure(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

    public static QuotaFailure parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuotaFailure parseFrom(p pVar) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static QuotaFailure parseFrom(p pVar, f0 f0Var) throws IOException {
        return (QuotaFailure) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
