package com.google.api;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class MetricRule extends GeneratedMessageV3 implements r0 {
    public static final int METRIC_COSTS_FIELD_NUMBER = 2;
    public static final int SELECTOR_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private com.google.protobuf.g1<String, Long> metricCosts_;
    private volatile Object selector_;
    private static final MetricRule DEFAULT_INSTANCE = new MetricRule();
    private static final e2<MetricRule> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<MetricRule> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetricRule m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new MetricRule(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r0 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10819e;

        /* renamed from: f  reason: collision with root package name */
        private com.google.protobuf.g1<String, Long> f10820f;

        /* synthetic */ b(a aVar) {
            this();
        }

        private com.google.protobuf.g1<String, Long> b0() {
            com.google.protobuf.g1<String, Long> g1Var = this.f10820f;
            return g1Var == null ? com.google.protobuf.g1.g(c.f10821a) : g1Var;
        }

        private com.google.protobuf.g1<String, Long> d0() {
            R();
            if (this.f10820f == null) {
                this.f10820f = com.google.protobuf.g1.p(c.f10821a);
            }
            if (!this.f10820f.m()) {
                this.f10820f = this.f10820f.f();
            }
            return this.f10820f;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return b1.f10947d.d(MetricRule.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 == 2) {
                return b0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 == 2) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetricRule build() {
            MetricRule I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetricRule I() {
            MetricRule metricRule = new MetricRule(this, (a) null);
            metricRule.selector_ = this.f10819e;
            metricRule.metricCosts_ = b0();
            metricRule.metricCosts_.n();
            Q();
            return metricRule;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public MetricRule getDefaultInstanceForType() {
            return MetricRule.getDefaultInstance();
        }

        public b g0(MetricRule metricRule) {
            if (metricRule == MetricRule.getDefaultInstance()) {
                return this;
            }
            if (!metricRule.getSelector().isEmpty()) {
                this.f10819e = metricRule.selector_;
                R();
            }
            d0().o(metricRule.internalGetMetricCosts());
            z(((GeneratedMessageV3) metricRule).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return b1.f10946c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.MetricRule.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.MetricRule.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.MetricRule r3 = (com.google.api.MetricRule) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.MetricRule r4 = (com.google.api.MetricRule) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.MetricRule.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.MetricRule$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof MetricRule) {
                return g0((MetricRule) l1Var);
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
            this.f10819e = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10819e = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, Long> f10821a = com.google.protobuf.e1.k(b1.f10948e, WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    /* synthetic */ MetricRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetricRule getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return b1.f10946c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, Long> internalGetMetricCosts() {
        com.google.protobuf.g1<String, Long> g1Var = this.metricCosts_;
        return g1Var == null ? com.google.protobuf.g1.g(c.f10821a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetricRule parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetricRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetricRule> parser() {
        return PARSER;
    }

    public boolean containsMetricCosts(String str) {
        Objects.requireNonNull(str);
        return internalGetMetricCosts().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetricRule)) {
            return super.equals(obj);
        }
        MetricRule metricRule = (MetricRule) obj;
        return getSelector().equals(metricRule.getSelector()) && internalGetMetricCosts().equals(metricRule.internalGetMetricCosts()) && this.unknownFields.equals(metricRule.unknownFields);
    }

    @Deprecated
    public Map<String, Long> getMetricCosts() {
        return getMetricCostsMap();
    }

    public int getMetricCostsCount() {
        return internalGetMetricCosts().i().size();
    }

    public Map<String, Long> getMetricCostsMap() {
        return internalGetMetricCosts().i();
    }

    public long getMetricCostsOrDefault(String str, long j10) {
        Objects.requireNonNull(str);
        Map<String, Long> i9 = internalGetMetricCosts().i();
        return i9.containsKey(str) ? i9.get(str).longValue() : j10;
    }

    public long getMetricCostsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, Long> i9 = internalGetMetricCosts().i();
        if (i9.containsKey(str)) {
            return i9.get(str).longValue();
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MetricRule> getParserForType() {
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
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.selector_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.selector_);
        for (Map.Entry<String, Long> entry : internalGetMetricCosts().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(2, c.f10821a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
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
        if (!internalGetMetricCosts().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetMetricCosts().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b1.f10947d.d(MetricRule.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 == 2) {
            return internalGetMetricCosts();
        }
        throw new RuntimeException("Invalid map field number: " + i9);
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
        return new MetricRule();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.selector_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.selector_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetMetricCosts(), c.f10821a, 2);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetricRule(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(MetricRule metricRule) {
        return DEFAULT_INSTANCE.toBuilder().g0(metricRule);
    }

    public static MetricRule parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricRule parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MetricRule(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetricRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetricRule getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static MetricRule parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private MetricRule() {
        this.memoizedIsInitialized = (byte) -1;
        this.selector_ = "";
    }

    public static MetricRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static MetricRule parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MetricRule parseFrom(InputStream inputStream) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    private MetricRule(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.metricCosts_ = com.google.protobuf.g1.p(c.f10821a);
                                z11 |= true;
                            }
                            com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(c.f10821a.getParserForType(), f0Var);
                            this.metricCosts_.l().put(e1Var.f(), e1Var.h());
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

    public static MetricRule parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetricRule parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MetricRule parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (MetricRule) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
