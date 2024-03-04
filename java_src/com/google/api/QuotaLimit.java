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
public final class QuotaLimit extends GeneratedMessageV3 implements z0 {
    public static final int DEFAULT_LIMIT_FIELD_NUMBER = 3;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int DISPLAY_NAME_FIELD_NUMBER = 12;
    public static final int DURATION_FIELD_NUMBER = 5;
    public static final int FREE_TIER_FIELD_NUMBER = 7;
    public static final int MAX_LIMIT_FIELD_NUMBER = 4;
    public static final int METRIC_FIELD_NUMBER = 8;
    public static final int NAME_FIELD_NUMBER = 6;
    public static final int UNIT_FIELD_NUMBER = 9;
    public static final int VALUES_FIELD_NUMBER = 10;
    private static final long serialVersionUID = 0;
    private long defaultLimit_;
    private volatile Object description_;
    private volatile Object displayName_;
    private volatile Object duration_;
    private long freeTier_;
    private long maxLimit_;
    private byte memoizedIsInitialized;
    private volatile Object metric_;
    private volatile Object name_;
    private volatile Object unit_;
    private com.google.protobuf.g1<String, Long> values_;
    private static final QuotaLimit DEFAULT_INSTANCE = new QuotaLimit();
    private static final e2<QuotaLimit> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<QuotaLimit> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public QuotaLimit m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new QuotaLimit(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements z0 {

        /* renamed from: e  reason: collision with root package name */
        private Object f10862e;

        /* renamed from: f  reason: collision with root package name */
        private Object f10863f;

        /* renamed from: g  reason: collision with root package name */
        private long f10864g;

        /* renamed from: h  reason: collision with root package name */
        private long f10865h;

        /* renamed from: i  reason: collision with root package name */
        private long f10866i;

        /* renamed from: j  reason: collision with root package name */
        private Object f10867j;

        /* renamed from: k  reason: collision with root package name */
        private Object f10868k;

        /* renamed from: l  reason: collision with root package name */
        private Object f10869l;

        /* renamed from: m  reason: collision with root package name */
        private com.google.protobuf.g1<String, Long> f10870m;

        /* renamed from: n  reason: collision with root package name */
        private Object f10871n;

        /* synthetic */ b(a aVar) {
            this();
        }

        private com.google.protobuf.g1<String, Long> b0() {
            R();
            if (this.f10870m == null) {
                this.f10870m = com.google.protobuf.g1.p(c.f10872a);
            }
            if (!this.f10870m.m()) {
                this.f10870m = this.f10870m.f();
            }
            return this.f10870m;
        }

        private com.google.protobuf.g1<String, Long> d0() {
            com.google.protobuf.g1<String, Long> g1Var = this.f10870m;
            return g1Var == null ? com.google.protobuf.g1.g(c.f10872a) : g1Var;
        }

        private void e0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return b1.f10951h.d(QuotaLimit.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 M(int i9) {
            if (i9 == 10) {
                return d0();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected com.google.protobuf.g1 N(int i9) {
            if (i9 == 10) {
                return b0();
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
        public QuotaLimit build() {
            QuotaLimit I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public QuotaLimit I() {
            QuotaLimit quotaLimit = new QuotaLimit(this, (a) null);
            quotaLimit.name_ = this.f10862e;
            quotaLimit.description_ = this.f10863f;
            quotaLimit.defaultLimit_ = this.f10864g;
            quotaLimit.maxLimit_ = this.f10865h;
            quotaLimit.freeTier_ = this.f10866i;
            quotaLimit.duration_ = this.f10867j;
            quotaLimit.metric_ = this.f10868k;
            quotaLimit.unit_ = this.f10869l;
            quotaLimit.values_ = d0();
            quotaLimit.values_.n();
            quotaLimit.displayName_ = this.f10871n;
            Q();
            return quotaLimit;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public QuotaLimit getDefaultInstanceForType() {
            return QuotaLimit.getDefaultInstance();
        }

        public b g0(QuotaLimit quotaLimit) {
            if (quotaLimit == QuotaLimit.getDefaultInstance()) {
                return this;
            }
            if (!quotaLimit.getName().isEmpty()) {
                this.f10862e = quotaLimit.name_;
                R();
            }
            if (!quotaLimit.getDescription().isEmpty()) {
                this.f10863f = quotaLimit.description_;
                R();
            }
            if (quotaLimit.getDefaultLimit() != 0) {
                k0(quotaLimit.getDefaultLimit());
            }
            if (quotaLimit.getMaxLimit() != 0) {
                n0(quotaLimit.getMaxLimit());
            }
            if (quotaLimit.getFreeTier() != 0) {
                m0(quotaLimit.getFreeTier());
            }
            if (!quotaLimit.getDuration().isEmpty()) {
                this.f10867j = quotaLimit.duration_;
                R();
            }
            if (!quotaLimit.getMetric().isEmpty()) {
                this.f10868k = quotaLimit.metric_;
                R();
            }
            if (!quotaLimit.getUnit().isEmpty()) {
                this.f10869l = quotaLimit.unit_;
                R();
            }
            b0().o(quotaLimit.internalGetValues());
            if (!quotaLimit.getDisplayName().isEmpty()) {
                this.f10871n = quotaLimit.displayName_;
                R();
            }
            z(((GeneratedMessageV3) quotaLimit).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return b1.f10950g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.api.QuotaLimit.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.api.QuotaLimit.access$1600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.api.QuotaLimit r3 = (com.google.api.QuotaLimit) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.api.QuotaLimit r4 = (com.google.api.QuotaLimit) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.QuotaLimit.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.api.QuotaLimit$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof QuotaLimit) {
                return g0((QuotaLimit) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(long j10) {
            this.f10864g = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b m0(long j10) {
            this.f10866i = j10;
            R();
            return this;
        }

        public b n0(long j10) {
            this.f10865h = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f10862e = "";
            this.f10863f = "";
            this.f10867j = "";
            this.f10868k = "";
            this.f10869l = "";
            this.f10871n = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f10862e = "";
            this.f10863f = "";
            this.f10867j = "";
            this.f10868k = "";
            this.f10869l = "";
            this.f10871n = "";
            e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final com.google.protobuf.e1<String, Long> f10872a = com.google.protobuf.e1.k(b1.f10952i, WireFormat.FieldType.STRING, "", WireFormat.FieldType.INT64, 0L);
    }

    /* synthetic */ QuotaLimit(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static QuotaLimit getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return b1.f10950g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.protobuf.g1<String, Long> internalGetValues() {
        com.google.protobuf.g1<String, Long> g1Var = this.values_;
        return g1Var == null ? com.google.protobuf.g1.g(c.f10872a) : g1Var;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<QuotaLimit> parser() {
        return PARSER;
    }

    public boolean containsValues(String str) {
        Objects.requireNonNull(str);
        return internalGetValues().i().containsKey(str);
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QuotaLimit)) {
            return super.equals(obj);
        }
        QuotaLimit quotaLimit = (QuotaLimit) obj;
        return getName().equals(quotaLimit.getName()) && getDescription().equals(quotaLimit.getDescription()) && getDefaultLimit() == quotaLimit.getDefaultLimit() && getMaxLimit() == quotaLimit.getMaxLimit() && getFreeTier() == quotaLimit.getFreeTier() && getDuration().equals(quotaLimit.getDuration()) && getMetric().equals(quotaLimit.getMetric()) && getUnit().equals(quotaLimit.getUnit()) && internalGetValues().equals(quotaLimit.internalGetValues()) && getDisplayName().equals(quotaLimit.getDisplayName()) && this.unknownFields.equals(quotaLimit.unknownFields);
    }

    public long getDefaultLimit() {
        return this.defaultLimit_;
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

    public String getDisplayName() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.displayName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDisplayNameBytes() {
        Object obj = this.displayName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.displayName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getDuration() {
        Object obj = this.duration_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.duration_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDurationBytes() {
        Object obj = this.duration_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.duration_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getFreeTier() {
        return this.freeTier_;
    }

    public long getMaxLimit() {
        return this.maxLimit_;
    }

    public String getMetric() {
        Object obj = this.metric_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.metric_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMetricBytes() {
        Object obj = this.metric_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.metric_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
    public e2<QuotaLimit> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.description_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(2, this.description_);
        long j10 = this.defaultLimit_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.z(3, j10);
        }
        long j11 = this.maxLimit_;
        if (j11 != 0) {
            computeStringSize += CodedOutputStream.z(4, j11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.duration_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(5, this.duration_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.name_);
        }
        long j12 = this.freeTier_;
        if (j12 != 0) {
            computeStringSize += CodedOutputStream.z(7, j12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.metric_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.metric_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.unit_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(9, this.unit_);
        }
        for (Map.Entry<String, Long> entry : internalGetValues().i().entrySet()) {
            computeStringSize += CodedOutputStream.G(10, c.f10872a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(12, this.displayName_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getUnit() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.unit_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUnitBytes() {
        Object obj = this.unit_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.unit_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public Map<String, Long> getValues() {
        return getValuesMap();
    }

    public int getValuesCount() {
        return internalGetValues().i().size();
    }

    public Map<String, Long> getValuesMap() {
        return internalGetValues().i();
    }

    public long getValuesOrDefault(String str, long j10) {
        Objects.requireNonNull(str);
        Map<String, Long> i9 = internalGetValues().i();
        return i9.containsKey(str) ? i9.get(str).longValue() : j10;
    }

    public long getValuesOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, Long> i9 = internalGetValues().i();
        if (i9.containsKey(str)) {
            return i9.get(str).longValue();
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 6) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 37) + 3) * 53) + com.google.protobuf.u0.i(getDefaultLimit())) * 37) + 4) * 53) + com.google.protobuf.u0.i(getMaxLimit())) * 37) + 7) * 53) + com.google.protobuf.u0.i(getFreeTier())) * 37) + 5) * 53) + getDuration().hashCode()) * 37) + 8) * 53) + getMetric().hashCode()) * 37) + 9) * 53) + getUnit().hashCode();
        if (!internalGetValues().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 10) * 53) + internalGetValues().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 12) * 53) + getDisplayName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b1.f10951h.d(QuotaLimit.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected com.google.protobuf.g1 internalGetMapField(int i9) {
        if (i9 == 10) {
            return internalGetValues();
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
        return new QuotaLimit();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.description_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
        }
        long j10 = this.defaultLimit_;
        if (j10 != 0) {
            codedOutputStream.J0(3, j10);
        }
        long j11 = this.maxLimit_;
        if (j11 != 0) {
            codedOutputStream.J0(4, j11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.duration_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.duration_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.name_);
        }
        long j12 = this.freeTier_;
        if (j12 != 0) {
            codedOutputStream.J0(7, j12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.metric_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.metric_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.unit_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.unit_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetValues(), c.f10872a, 10);
        if (!GeneratedMessageV3.isStringEmpty(this.displayName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.displayName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ QuotaLimit(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(QuotaLimit quotaLimit) {
        return DEFAULT_INSTANCE.toBuilder().g0(quotaLimit);
    }

    public static QuotaLimit parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuotaLimit parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private QuotaLimit(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuotaLimit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public QuotaLimit getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static QuotaLimit parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private QuotaLimit() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.description_ = "";
        this.duration_ = "";
        this.metric_ = "";
        this.unit_ = "";
        this.displayName_ = "";
    }

    public static QuotaLimit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static QuotaLimit parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static QuotaLimit parseFrom(InputStream inputStream) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static QuotaLimit parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuotaLimit parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static QuotaLimit parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuotaLimit) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object] */
    private QuotaLimit(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                        switch (L) {
                            case 0:
                                break;
                            case 18:
                                this.description_ = pVar.K();
                                continue;
                            case 24:
                                this.defaultLimit_ = pVar.A();
                                continue;
                            case 32:
                                this.maxLimit_ = pVar.A();
                                continue;
                            case 42:
                                this.duration_ = pVar.K();
                                continue;
                            case 50:
                                this.name_ = pVar.K();
                                continue;
                            case 56:
                                this.freeTier_ = pVar.A();
                                continue;
                            case 66:
                                this.metric_ = pVar.K();
                                continue;
                            case 74:
                                this.unit_ = pVar.K();
                                continue;
                            case 82:
                                if (!(z11 & true)) {
                                    this.values_ = com.google.protobuf.g1.p(c.f10872a);
                                    z11 |= true;
                                }
                                com.google.protobuf.e1 e1Var = (com.google.protobuf.e1) pVar.B(c.f10872a.getParserForType(), f0Var);
                                this.values_.l().put(e1Var.f(), e1Var.h());
                                continue;
                            case 98:
                                this.displayName_ = pVar.K();
                                continue;
                            default:
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    break;
                                } else {
                                    continue;
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
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
