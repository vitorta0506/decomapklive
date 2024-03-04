package com.google.api;

import com.google.api.SystemParameter;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SystemParameterRule extends GeneratedMessageV3 implements k1 {
    public static final int PARAMETERS_FIELD_NUMBER = 2;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<SystemParameter> parameters_;
    private volatile Object selector_;
    private static final SystemParameterRule DEFAULT_INSTANCE = new SystemParameterRule();
    private static final e2<SystemParameterRule> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SystemParameterRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SystemParameterRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SystemParameterRule(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10918e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10919f;

        /* renamed from: g  reason: collision with root package name */
        private List<SystemParameter> f10920g;

        /* renamed from: h  reason: collision with root package name */
        private l2<SystemParameter, SystemParameter.b, i1> f10921h;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10918e & 1) == 0) {
                this.f10920g = new ArrayList(this.f10920g);
                this.f10918e |= 1;
            }
        }

        private l2<SystemParameter, SystemParameter.b, i1> d0() {
            if (this.f10921h == null) {
                this.f10921h = new l2<>(this.f10920g, (this.f10918e & 1) != 0, H(), O());
                this.f10920g = null;
            }
            return this.f10921h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j1.f11403d.d(SystemParameterRule.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SystemParameterRule build() {
            SystemParameterRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SystemParameterRule I() {
            SystemParameterRule systemParameterRule = new SystemParameterRule(this, (a) null);
            systemParameterRule.selector_ = this.f10919f;
            l2<SystemParameter, SystemParameter.b, i1> l2Var = this.f10921h;
            if (l2Var == null) {
                if ((this.f10918e & 1) != 0) {
                    this.f10920g = Collections.unmodifiableList(this.f10920g);
                    this.f10918e &= -2;
                }
                systemParameterRule.parameters_ = this.f10920g;
            } else {
                systemParameterRule.parameters_ = l2Var.e();
            }
            Q();
            return systemParameterRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SystemParameterRule getDefaultInstanceForType() {
            return SystemParameterRule.getDefaultInstance();
        }

        public b g0(SystemParameterRule systemParameterRule) {
            if (systemParameterRule == SystemParameterRule.getDefaultInstance()) {
                return this;
            }
            if (!systemParameterRule.getSelector().isEmpty()) {
                this.f10919f = systemParameterRule.selector_;
                R();
            }
            if (this.f10921h == null) {
                if (!systemParameterRule.parameters_.isEmpty()) {
                    if (this.f10920g.isEmpty()) {
                        this.f10920g = systemParameterRule.parameters_;
                        this.f10918e &= -2;
                    } else {
                        a0();
                        this.f10920g.addAll(systemParameterRule.parameters_);
                    }
                    R();
                }
            } else if (!systemParameterRule.parameters_.isEmpty()) {
                if (this.f10921h.k()) {
                    this.f10921h.f();
                    this.f10921h = null;
                    this.f10920g = systemParameterRule.parameters_;
                    this.f10918e &= -2;
                    this.f10921h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10921h.b(systemParameterRule.parameters_);
                }
            }
            z(((GeneratedMessageV3) systemParameterRule).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j1.f11402c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.SystemParameterRule.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.SystemParameterRule.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.SystemParameterRule r3 = (com.google.api.SystemParameterRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.SystemParameterRule r4 = (com.google.api.SystemParameterRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.SystemParameterRule.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.SystemParameterRule$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SystemParameterRule) {
                return g0((SystemParameterRule) l1Var);
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
            this.f10919f = "";
            this.f10920g = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10919f = "";
            this.f10920g = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SystemParameterRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SystemParameterRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j1.f11402c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SystemParameterRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SystemParameterRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SystemParameterRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SystemParameterRule)) {
            return super.equals(obj);
        }
        SystemParameterRule systemParameterRule = (SystemParameterRule) obj;
        return getSelector().equals(systemParameterRule.getSelector()) && getParametersList().equals(systemParameterRule.getParametersList()) && this.unknownFields.equals(systemParameterRule.unknownFields);
    }

    public SystemParameter getParameters(int i9) {
        return this.parameters_.get(i9);
    }

    public int getParametersCount() {
        return this.parameters_.size();
    }

    public List<SystemParameter> getParametersList() {
        return this.parameters_;
    }

    public i1 getParametersOrBuilder(int i9) {
        return this.parameters_.get(i9);
    }

    public List<? extends i1> getParametersOrBuilderList() {
        return this.parameters_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SystemParameterRule> getParserForType() {
        return PARSER;
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
        for (int i10 = 0; i10 < this.parameters_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.parameters_.get(i10));
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSelector().hashCode();
        if (getParametersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getParametersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j1.f11403d.d(SystemParameterRule.class, b.class);
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
        return new SystemParameterRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        for (int i9 = 0; i9 < this.parameters_.size(); i9++) {
            codedOutputStream.L0(2, this.parameters_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SystemParameterRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SystemParameterRule systemParameterRule) {
        return DEFAULT_INSTANCE.toBuilder().g0(systemParameterRule);
    }

    public static SystemParameterRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SystemParameterRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SystemParameterRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SystemParameterRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SystemParameterRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static SystemParameterRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SystemParameterRule() {
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
        this.parameters_ = Collections.emptyList();
    }

    public static SystemParameterRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SystemParameterRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SystemParameterRule parseFrom(InputStream inputStream) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SystemParameterRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SystemParameterRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.parameters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.parameters_.add(pVar.B(SystemParameter.parser(), f0Var));
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
                    this.parameters_ = Collections.unmodifiableList(this.parameters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SystemParameterRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SystemParameterRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SystemParameterRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
