package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ContextRule extends GeneratedMessageV3 implements r {
    public static final int ALLOWED_REQUEST_EXTENSIONS_FIELD_NUMBER = 4;
    public static final int ALLOWED_RESPONSE_EXTENSIONS_FIELD_NUMBER = 5;
    private static final ContextRule DEFAULT_INSTANCE = new ContextRule();
    private static final e2<ContextRule> PARSER = new a();
    public static final int PROVIDED_FIELD_NUMBER = 3;
    public static final int REQUESTED_FIELD_NUMBER = 2;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private com.google.protobuf.z0 allowedRequestExtensions_;
    private com.google.protobuf.z0 allowedResponseExtensions_;
    private byte memoizedIsInitialized;
    private com.google.protobuf.z0 provided_;
    private com.google.protobuf.z0 requested_;
    private volatile Object selector_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<ContextRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ContextRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new ContextRule(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r {

        /* renamed from: e  reason: collision with root package name */
        private int f10698e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10699f;

        /* renamed from: g  reason: collision with root package name */
        private com.google.protobuf.z0 f10700g;

        /* renamed from: h  reason: collision with root package name */
        private com.google.protobuf.z0 f10701h;

        /* renamed from: i  reason: collision with root package name */
        private com.google.protobuf.z0 f10702i;

        /* renamed from: j  reason: collision with root package name */
        private com.google.protobuf.z0 f10703j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10698e & 4) == 0) {
                this.f10702i = new com.google.protobuf.y0(this.f10702i);
                this.f10698e |= 4;
            }
        }

        private void b0() {
            if ((this.f10698e & 8) == 0) {
                this.f10703j = new com.google.protobuf.y0(this.f10703j);
                this.f10698e |= 8;
            }
        }

        private void d0() {
            if ((this.f10698e & 2) == 0) {
                this.f10701h = new com.google.protobuf.y0(this.f10701h);
                this.f10698e |= 2;
            }
        }

        private void e0() {
            if ((this.f10698e & 1) == 0) {
                this.f10700g = new com.google.protobuf.y0(this.f10700g);
                this.f10698e |= 1;
            }
        }

        private void h0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return q.f11455d.d(ContextRule.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ContextRule build() {
            ContextRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ContextRule I() {
            ContextRule contextRule = new ContextRule(this, (a) null);
            contextRule.selector_ = this.f10699f;
            if ((this.f10698e & 1) != 0) {
                this.f10700g = this.f10700g.V0();
                this.f10698e &= -2;
            }
            contextRule.requested_ = this.f10700g;
            if ((this.f10698e & 2) != 0) {
                this.f10701h = this.f10701h.V0();
                this.f10698e &= -3;
            }
            contextRule.provided_ = this.f10701h;
            if ((this.f10698e & 4) != 0) {
                this.f10702i = this.f10702i.V0();
                this.f10698e &= -5;
            }
            contextRule.allowedRequestExtensions_ = this.f10702i;
            if ((this.f10698e & 8) != 0) {
                this.f10703j = this.f10703j.V0();
                this.f10698e &= -9;
            }
            contextRule.allowedResponseExtensions_ = this.f10703j;
            Q();
            return contextRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public ContextRule getDefaultInstanceForType() {
            return ContextRule.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return q.f11454c;
        }

        public b i0(ContextRule contextRule) {
            if (contextRule == ContextRule.getDefaultInstance()) {
                return this;
            }
            if (!contextRule.getSelector().isEmpty()) {
                this.f10699f = contextRule.selector_;
                R();
            }
            if (!contextRule.requested_.isEmpty()) {
                if (this.f10700g.isEmpty()) {
                    this.f10700g = contextRule.requested_;
                    this.f10698e &= -2;
                } else {
                    e0();
                    this.f10700g.addAll(contextRule.requested_);
                }
                R();
            }
            if (!contextRule.provided_.isEmpty()) {
                if (this.f10701h.isEmpty()) {
                    this.f10701h = contextRule.provided_;
                    this.f10698e &= -3;
                } else {
                    d0();
                    this.f10701h.addAll(contextRule.provided_);
                }
                R();
            }
            if (!contextRule.allowedRequestExtensions_.isEmpty()) {
                if (this.f10702i.isEmpty()) {
                    this.f10702i = contextRule.allowedRequestExtensions_;
                    this.f10698e &= -5;
                } else {
                    a0();
                    this.f10702i.addAll(contextRule.allowedRequestExtensions_);
                }
                R();
            }
            if (!contextRule.allowedResponseExtensions_.isEmpty()) {
                if (this.f10703j.isEmpty()) {
                    this.f10703j = contextRule.allowedResponseExtensions_;
                    this.f10698e &= -9;
                } else {
                    b0();
                    this.f10703j.addAll(contextRule.allowedResponseExtensions_);
                }
                R();
            }
            z(((GeneratedMessageV3) contextRule).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.ContextRule.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.ContextRule.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.ContextRule r3 = (com.google.api.ContextRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.ContextRule r4 = (com.google.api.ContextRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.ContextRule.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.ContextRule$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof ContextRule) {
                return i0((ContextRule) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10699f = "";
            com.google.protobuf.z0 z0Var = com.google.protobuf.y0.f15344d;
            this.f10700g = z0Var;
            this.f10701h = z0Var;
            this.f10702i = z0Var;
            this.f10703j = z0Var;
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10699f = "";
            com.google.protobuf.z0 z0Var = com.google.protobuf.y0.f15344d;
            this.f10700g = z0Var;
            this.f10701h = z0Var;
            this.f10702i = z0Var;
            this.f10703j = z0Var;
            h0();
        }
    }

    /* synthetic */ ContextRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ContextRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return q.f11454c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ContextRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ContextRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ContextRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ContextRule)) {
            return super.equals(obj);
        }
        ContextRule contextRule = (ContextRule) obj;
        return getSelector().equals(contextRule.getSelector()) && m193getRequestedList().equals(contextRule.m193getRequestedList()) && m192getProvidedList().equals(contextRule.m192getProvidedList()) && m190getAllowedRequestExtensionsList().equals(contextRule.m190getAllowedRequestExtensionsList()) && m191getAllowedResponseExtensionsList().equals(contextRule.m191getAllowedResponseExtensionsList()) && this.unknownFields.equals(contextRule.unknownFields);
    }

    public String getAllowedRequestExtensions(int i9) {
        return this.allowedRequestExtensions_.get(i9);
    }

    public ByteString getAllowedRequestExtensionsBytes(int i9) {
        return this.allowedRequestExtensions_.j0(i9);
    }

    public int getAllowedRequestExtensionsCount() {
        return this.allowedRequestExtensions_.size();
    }

    public String getAllowedResponseExtensions(int i9) {
        return this.allowedResponseExtensions_.get(i9);
    }

    public ByteString getAllowedResponseExtensionsBytes(int i9) {
        return this.allowedResponseExtensions_.j0(i9);
    }

    public int getAllowedResponseExtensionsCount() {
        return this.allowedResponseExtensions_.size();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ContextRule> getParserForType() {
        return PARSER;
    }

    public String getProvided(int i9) {
        return this.provided_.get(i9);
    }

    public ByteString getProvidedBytes(int i9) {
        return this.provided_.j0(i9);
    }

    public int getProvidedCount() {
        return this.provided_.size();
    }

    public String getRequested(int i9) {
        return this.requested_.get(i9);
    }

    public ByteString getRequestedBytes(int i9) {
        return this.requested_.j0(i9);
    }

    public int getRequestedCount() {
        return this.requested_.size();
    }

    public String getSelector() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.selector_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSelectorBytes() {
        Object obj = this.selector_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.selector_ = copyFromUtf8;
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
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.selector_) ? GeneratedMessageV3.computeStringSize(1, this.selector_) + 0 : 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.requested_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.requested_.c1(i11));
        }
        int size = computeStringSize + i10 + (m193getRequestedList().size() * 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.provided_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.provided_.c1(i13));
        }
        int size2 = size + i12 + (m192getProvidedList().size() * 1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.allowedRequestExtensions_.size(); i15++) {
            i14 += GeneratedMessageV3.computeStringSizeNoTag(this.allowedRequestExtensions_.c1(i15));
        }
        int size3 = size2 + i14 + (m190getAllowedRequestExtensionsList().size() * 1);
        int i16 = 0;
        for (int i17 = 0; i17 < this.allowedResponseExtensions_.size(); i17++) {
            i16 += GeneratedMessageV3.computeStringSizeNoTag(this.allowedResponseExtensions_.c1(i17));
        }
        int size4 = size3 + i16 + (m191getAllowedResponseExtensionsList().size() * 1) + this.unknownFields.getSerializedSize();
        this.memoizedSize = size4;
        return size4;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSelector().hashCode();
        if (getRequestedCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m193getRequestedList().hashCode();
        }
        if (getProvidedCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + m192getProvidedList().hashCode();
        }
        if (getAllowedRequestExtensionsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + m190getAllowedRequestExtensionsList().hashCode();
        }
        if (getAllowedResponseExtensionsCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + m191getAllowedResponseExtensionsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return q.f11455d.d(ContextRule.class, b.class);
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
        return new ContextRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        for (int i9 = 0; i9 < this.requested_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.requested_.c1(i9));
        }
        for (int i10 = 0; i10 < this.provided_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.provided_.c1(i10));
        }
        for (int i11 = 0; i11 < this.allowedRequestExtensions_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.allowedRequestExtensions_.c1(i11));
        }
        for (int i12 = 0; i12 < this.allowedResponseExtensions_.size(); i12++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.allowedResponseExtensions_.c1(i12));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ContextRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ContextRule contextRule) {
        return DEFAULT_INSTANCE.toBuilder().i0(contextRule);
    }

    public static ContextRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ContextRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getAllowedRequestExtensionsList */
    public i2 m190getAllowedRequestExtensionsList() {
        return this.allowedRequestExtensions_;
    }

    /* renamed from: getAllowedResponseExtensionsList */
    public i2 m191getAllowedResponseExtensionsList() {
        return this.allowedResponseExtensions_;
    }

    /* renamed from: getProvidedList */
    public i2 m192getProvidedList() {
        return this.provided_;
    }

    /* renamed from: getRequestedList */
    public i2 m193getRequestedList() {
        return this.requested_;
    }

    private ContextRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ContextRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ContextRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ContextRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ContextRule() {
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
        com.google.protobuf.z0 z0Var = com.google.protobuf.y0.f15344d;
        this.requested_ = z0Var;
        this.provided_ = z0Var;
        this.allowedRequestExtensions_ = z0Var;
        this.allowedResponseExtensions_ = z0Var;
    }

    public static ContextRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ContextRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ContextRule parseFrom(InputStream inputStream) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ContextRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ContextRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ContextRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (ContextRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private ContextRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L == 10) {
                            this.selector_ = pVar.K();
                        } else if (L == 18) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.requested_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.requested_.add(K);
                        } else if (L == 26) {
                            String K2 = pVar.K();
                            if (!(z11 & true)) {
                                this.provided_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.provided_.add(K2);
                        } else if (L == 34) {
                            String K3 = pVar.K();
                            if (!(z11 & true)) {
                                this.allowedRequestExtensions_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.allowedRequestExtensions_.add(K3);
                        } else if (L != 42) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            String K4 = pVar.K();
                            if (!(z11 & true)) {
                                this.allowedResponseExtensions_ = new com.google.protobuf.y0();
                                z11 |= true;
                            }
                            this.allowedResponseExtensions_.add(K4);
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
                    this.requested_ = this.requested_.V0();
                }
                if (z11 & true) {
                    this.provided_ = this.provided_.V0();
                }
                if (z11 & true) {
                    this.allowedRequestExtensions_ = this.allowedRequestExtensions_.V0();
                }
                if (z11 & true) {
                    this.allowedResponseExtensions_ = this.allowedResponseExtensions_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
