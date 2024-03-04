package com.google.api;

import com.google.api.RoutingParameter;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
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
public final class RoutingRule extends GeneratedMessageV3 implements r1 {
    private static final RoutingRule DEFAULT_INSTANCE = new RoutingRule();
    private static final e2<RoutingRule> PARSER = new a();
    public static final int ROUTING_PARAMETERS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<RoutingParameter> routingParameters_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<RoutingRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RoutingRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RoutingRule(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10885e;

        /* renamed from: f  reason: collision with root package name */
        private List<RoutingParameter> f10886f;

        /* renamed from: g  reason: collision with root package name */
        private l2<RoutingParameter, RoutingParameter.b, d1> f10887g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10885e & 1) == 0) {
                this.f10886f = new ArrayList(this.f10886f);
                this.f10885e |= 1;
            }
        }

        private l2<RoutingParameter, RoutingParameter.b, d1> d0() {
            if (this.f10887g == null) {
                this.f10887g = new l2<>(this.f10886f, (this.f10885e & 1) != 0, H(), O());
                this.f10886f = null;
            }
            return this.f10887g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e1.f11196c.d(RoutingRule.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RoutingRule build() {
            RoutingRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RoutingRule I() {
            RoutingRule routingRule = new RoutingRule(this, (a) null);
            int i9 = this.f10885e;
            l2<RoutingParameter, RoutingParameter.b, d1> l2Var = this.f10887g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10886f = Collections.unmodifiableList(this.f10886f);
                    this.f10885e &= -2;
                }
                routingRule.routingParameters_ = this.f10886f;
            } else {
                routingRule.routingParameters_ = l2Var.e();
            }
            Q();
            return routingRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public RoutingRule getDefaultInstanceForType() {
            return RoutingRule.getDefaultInstance();
        }

        public b g0(RoutingRule routingRule) {
            if (routingRule == RoutingRule.getDefaultInstance()) {
                return this;
            }
            if (this.f10887g == null) {
                if (!routingRule.routingParameters_.isEmpty()) {
                    if (this.f10886f.isEmpty()) {
                        this.f10886f = routingRule.routingParameters_;
                        this.f10885e &= -2;
                    } else {
                        a0();
                        this.f10886f.addAll(routingRule.routingParameters_);
                    }
                    R();
                }
            } else if (!routingRule.routingParameters_.isEmpty()) {
                if (this.f10887g.k()) {
                    this.f10887g.f();
                    this.f10887g = null;
                    this.f10886f = routingRule.routingParameters_;
                    this.f10885e &= -2;
                    this.f10887g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f10887g.b(routingRule.routingParameters_);
                }
            }
            z(((GeneratedMessageV3) routingRule).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e1.f11195b;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.RoutingRule.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.RoutingRule.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.RoutingRule r3 = (com.google.api.RoutingRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.RoutingRule r4 = (com.google.api.RoutingRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.RoutingRule.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.RoutingRule$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof RoutingRule) {
                return g0((RoutingRule) l1Var);
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
            this.f10886f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10886f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ RoutingRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RoutingRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e1.f11195b;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RoutingRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RoutingRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RoutingRule> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RoutingRule)) {
            return super.equals(obj);
        }
        RoutingRule routingRule = (RoutingRule) obj;
        return getRoutingParametersList().equals(routingRule.getRoutingParametersList()) && this.unknownFields.equals(routingRule.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RoutingRule> getParserForType() {
        return PARSER;
    }

    public RoutingParameter getRoutingParameters(int i9) {
        return this.routingParameters_.get(i9);
    }

    public int getRoutingParametersCount() {
        return this.routingParameters_.size();
    }

    public List<RoutingParameter> getRoutingParametersList() {
        return this.routingParameters_;
    }

    public d1 getRoutingParametersOrBuilder(int i9) {
        return this.routingParameters_.get(i9);
    }

    public List<? extends d1> getRoutingParametersOrBuilderList() {
        return this.routingParameters_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.routingParameters_.size(); i11++) {
            i10 += CodedOutputStream.G(2, this.routingParameters_.get(i11));
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
        if (getRoutingParametersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getRoutingParametersList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e1.f11196c.d(RoutingRule.class, b.class);
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
        return new RoutingRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.routingParameters_.size(); i9++) {
            codedOutputStream.L0(2, this.routingParameters_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RoutingRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RoutingRule routingRule) {
        return DEFAULT_INSTANCE.toBuilder().g0(routingRule);
    }

    public static RoutingRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RoutingRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RoutingRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RoutingRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RoutingRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RoutingRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RoutingRule() {
        this.memoizedIsInitialized = (byte) -1;
        this.routingParameters_ = Collections.emptyList();
    }

    public static RoutingRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RoutingRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RoutingRule parseFrom(InputStream inputStream) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RoutingRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.routingParameters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.routingParameters_.add(pVar.B(RoutingParameter.parser(), f0Var));
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
                    this.routingParameters_ = Collections.unmodifiableList(this.routingParameters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static RoutingRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RoutingRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RoutingRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RoutingRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
