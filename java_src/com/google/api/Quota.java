package com.google.api;

import com.google.api.MetricRule;
import com.google.api.QuotaLimit;
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
public final class Quota extends GeneratedMessageV3 implements a1 {
    public static final int LIMITS_FIELD_NUMBER = 3;
    public static final int METRIC_RULES_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<QuotaLimit> limits_;
    private byte memoizedIsInitialized;
    private List<MetricRule> metricRules_;
    private static final Quota DEFAULT_INSTANCE = new Quota();
    private static final e2<Quota> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<Quota> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Quota m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Quota(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements a1 {

        /* renamed from: e  reason: collision with root package name */
        private int f10857e;

        /* renamed from: f  reason: collision with root package name */
        private List<QuotaLimit> f10858f;

        /* renamed from: g  reason: collision with root package name */
        private l2<QuotaLimit, QuotaLimit.b, z0> f10859g;

        /* renamed from: h  reason: collision with root package name */
        private List<MetricRule> f10860h;

        /* renamed from: i  reason: collision with root package name */
        private l2<MetricRule, MetricRule.b, r0> f10861i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f10857e & 1) == 0) {
                this.f10858f = new ArrayList(this.f10858f);
                this.f10857e |= 1;
            }
        }

        private void b0() {
            if ((this.f10857e & 2) == 0) {
                this.f10860h = new ArrayList(this.f10860h);
                this.f10857e |= 2;
            }
        }

        private l2<QuotaLimit, QuotaLimit.b, z0> e0() {
            if (this.f10859g == null) {
                this.f10859g = new l2<>(this.f10858f, (this.f10857e & 1) != 0, H(), O());
                this.f10858f = null;
            }
            return this.f10859g;
        }

        private l2<MetricRule, MetricRule.b, r0> g0() {
            if (this.f10861i == null) {
                this.f10861i = new l2<>(this.f10860h, (this.f10857e & 2) != 0, H(), O());
                this.f10860h = null;
            }
            return this.f10861i;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return b1.f10945b.d(Quota.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Quota build() {
            Quota I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Quota I() {
            Quota quota = new Quota(this, (a) null);
            int i9 = this.f10857e;
            l2<QuotaLimit, QuotaLimit.b, z0> l2Var = this.f10859g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f10858f = Collections.unmodifiableList(this.f10858f);
                    this.f10857e &= -2;
                }
                quota.limits_ = this.f10858f;
            } else {
                quota.limits_ = l2Var.e();
            }
            l2<MetricRule, MetricRule.b, r0> l2Var2 = this.f10861i;
            if (l2Var2 == null) {
                if ((this.f10857e & 2) != 0) {
                    this.f10860h = Collections.unmodifiableList(this.f10860h);
                    this.f10857e &= -3;
                }
                quota.metricRules_ = this.f10860h;
            } else {
                quota.metricRules_ = l2Var2.e();
            }
            Q();
            return quota;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Quota getDefaultInstanceForType() {
            return Quota.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return b1.f10944a;
        }

        public b i0(Quota quota) {
            if (quota == Quota.getDefaultInstance()) {
                return this;
            }
            if (this.f10859g == null) {
                if (!quota.limits_.isEmpty()) {
                    if (this.f10858f.isEmpty()) {
                        this.f10858f = quota.limits_;
                        this.f10857e &= -2;
                    } else {
                        a0();
                        this.f10858f.addAll(quota.limits_);
                    }
                    R();
                }
            } else if (!quota.limits_.isEmpty()) {
                if (this.f10859g.k()) {
                    this.f10859g.f();
                    this.f10859g = null;
                    this.f10858f = quota.limits_;
                    this.f10857e &= -2;
                    this.f10859g = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f10859g.b(quota.limits_);
                }
            }
            if (this.f10861i == null) {
                if (!quota.metricRules_.isEmpty()) {
                    if (this.f10860h.isEmpty()) {
                        this.f10860h = quota.metricRules_;
                        this.f10857e &= -3;
                    } else {
                        b0();
                        this.f10860h.addAll(quota.metricRules_);
                    }
                    R();
                }
            } else if (!quota.metricRules_.isEmpty()) {
                if (this.f10861i.k()) {
                    this.f10861i.f();
                    this.f10861i = null;
                    this.f10860h = quota.metricRules_;
                    this.f10857e &= -3;
                    this.f10861i = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f10861i.b(quota.metricRules_);
                }
            }
            z(((GeneratedMessageV3) quota).unknownFields);
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
        public com.google.api.Quota.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.Quota.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.Quota r3 = (com.google.api.Quota) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.Quota r4 = (com.google.api.Quota) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.Quota.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.Quota$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Quota) {
                return i0((Quota) l1Var);
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
            this.f10858f = Collections.emptyList();
            this.f10860h = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10858f = Collections.emptyList();
            this.f10860h = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ Quota(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Quota getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return b1.f10944a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Quota parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Quota) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Quota parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Quota> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Quota)) {
            return super.equals(obj);
        }
        Quota quota = (Quota) obj;
        return getLimitsList().equals(quota.getLimitsList()) && getMetricRulesList().equals(quota.getMetricRulesList()) && this.unknownFields.equals(quota.unknownFields);
    }

    public QuotaLimit getLimits(int i9) {
        return this.limits_.get(i9);
    }

    public int getLimitsCount() {
        return this.limits_.size();
    }

    public List<QuotaLimit> getLimitsList() {
        return this.limits_;
    }

    public z0 getLimitsOrBuilder(int i9) {
        return this.limits_.get(i9);
    }

    public List<? extends z0> getLimitsOrBuilderList() {
        return this.limits_;
    }

    public MetricRule getMetricRules(int i9) {
        return this.metricRules_.get(i9);
    }

    public int getMetricRulesCount() {
        return this.metricRules_.size();
    }

    public List<MetricRule> getMetricRulesList() {
        return this.metricRules_;
    }

    public r0 getMetricRulesOrBuilder(int i9) {
        return this.metricRules_.get(i9);
    }

    public List<? extends r0> getMetricRulesOrBuilderList() {
        return this.metricRules_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Quota> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.limits_.size(); i11++) {
            i10 += CodedOutputStream.G(3, this.limits_.get(i11));
        }
        for (int i12 = 0; i12 < this.metricRules_.size(); i12++) {
            i10 += CodedOutputStream.G(4, this.metricRules_.get(i12));
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
        if (getLimitsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getLimitsList().hashCode();
        }
        if (getMetricRulesCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getMetricRulesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b1.f10945b.d(Quota.class, b.class);
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
        return new Quota();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.limits_.size(); i9++) {
            codedOutputStream.L0(3, this.limits_.get(i9));
        }
        for (int i10 = 0; i10 < this.metricRules_.size(); i10++) {
            codedOutputStream.L0(4, this.metricRules_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Quota(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Quota quota) {
        return DEFAULT_INSTANCE.toBuilder().i0(quota);
    }

    public static Quota parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Quota) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Quota parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Quota(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Quota parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Quota getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Quota parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Quota() {
        this.memoizedIsInitialized = (byte) -1;
        this.limits_ = Collections.emptyList();
        this.metricRules_ = Collections.emptyList();
    }

    public static Quota parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Quota parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Quota parseFrom(InputStream inputStream) throws IOException {
        return (Quota) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Quota parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Quota) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Quota(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 26) {
                                if (!(z11 & true)) {
                                    this.limits_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.limits_.add(pVar.B(QuotaLimit.parser(), f0Var));
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.metricRules_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.metricRules_.add(pVar.B(MetricRule.parser(), f0Var));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.limits_ = Collections.unmodifiableList(this.limits_);
                }
                if (z11 & true) {
                    this.metricRules_ = Collections.unmodifiableList(this.metricRules_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Quota parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Quota) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Quota parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Quota) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
