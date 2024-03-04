package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.n;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HistogramBucketSettings extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a {
    public static final int BUCKETS_FIELD_NUMBER = 2;
    public static final int MATCH_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int bucketsMemoizedSerializedSize;
    private u0.b buckets_;
    private StringMatcher match_;
    private byte memoizedIsInitialized;
    private static final HistogramBucketSettings DEFAULT_INSTANCE = new HistogramBucketSettings();
    private static final e2<HistogramBucketSettings> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HistogramBucketSettings> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HistogramBucketSettings m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HistogramBucketSettings(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f48880e;

        /* renamed from: f  reason: collision with root package name */
        private StringMatcher f48881f;

        /* renamed from: g  reason: collision with root package name */
        private q2<StringMatcher, StringMatcher.c, n> f48882g;

        /* renamed from: h  reason: collision with root package name */
        private u0.b f48883h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48880e & 1) == 0) {
                this.f48883h = GeneratedMessageV3.mutableCopy(this.f48883h);
                this.f48880e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48922j.d(HistogramBucketSettings.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HistogramBucketSettings build() {
            HistogramBucketSettings I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HistogramBucketSettings I() {
            HistogramBucketSettings histogramBucketSettings = new HistogramBucketSettings(this, (a) null);
            q2<StringMatcher, StringMatcher.c, n> q2Var = this.f48882g;
            if (q2Var == null) {
                histogramBucketSettings.match_ = this.f48881f;
            } else {
                histogramBucketSettings.match_ = q2Var.b();
            }
            if ((this.f48880e & 1) != 0) {
                this.f48883h.C();
                this.f48880e &= -2;
            }
            histogramBucketSettings.buckets_ = this.f48883h;
            Q();
            return histogramBucketSettings;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public HistogramBucketSettings getDefaultInstanceForType() {
            return HistogramBucketSettings.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.HistogramBucketSettings$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HistogramBucketSettings) {
                return h0((HistogramBucketSettings) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48921i;
        }

        public b h0(HistogramBucketSettings histogramBucketSettings) {
            if (histogramBucketSettings == HistogramBucketSettings.getDefaultInstance()) {
                return this;
            }
            if (histogramBucketSettings.hasMatch()) {
                i0(histogramBucketSettings.getMatch());
            }
            if (!histogramBucketSettings.buckets_.isEmpty()) {
                if (this.f48883h.isEmpty()) {
                    this.f48883h = histogramBucketSettings.buckets_;
                    this.f48880e &= -2;
                } else {
                    a0();
                    this.f48883h.addAll(histogramBucketSettings.buckets_);
                }
                R();
            }
            z(((GeneratedMessageV3) histogramBucketSettings).unknownFields);
            R();
            return this;
        }

        public b i0(StringMatcher stringMatcher) {
            q2<StringMatcher, StringMatcher.c, n> q2Var = this.f48882g;
            if (q2Var == null) {
                StringMatcher stringMatcher2 = this.f48881f;
                if (stringMatcher2 != null) {
                    this.f48881f = StringMatcher.newBuilder(stringMatcher2).g0(stringMatcher).I();
                } else {
                    this.f48881f = stringMatcher;
                }
                R();
            } else {
                q2Var.e(stringMatcher);
            }
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
            this.f48883h = HistogramBucketSettings.access$900();
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48883h = HistogramBucketSettings.access$900();
            d0();
        }
    }

    /* synthetic */ HistogramBucketSettings(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.b access$900() {
        return GeneratedMessageV3.emptyDoubleList();
    }

    public static HistogramBucketSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48921i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HistogramBucketSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HistogramBucketSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HistogramBucketSettings> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HistogramBucketSettings)) {
            return super.equals(obj);
        }
        HistogramBucketSettings histogramBucketSettings = (HistogramBucketSettings) obj;
        if (hasMatch() != histogramBucketSettings.hasMatch()) {
            return false;
        }
        return (!hasMatch() || getMatch().equals(histogramBucketSettings.getMatch())) && getBucketsList().equals(histogramBucketSettings.getBucketsList()) && this.unknownFields.equals(histogramBucketSettings.unknownFields);
    }

    public double getBuckets(int i9) {
        return this.buckets_.getDouble(i9);
    }

    public int getBucketsCount() {
        return this.buckets_.size();
    }

    public List<Double> getBucketsList() {
        return this.buckets_;
    }

    public StringMatcher getMatch() {
        StringMatcher stringMatcher = this.match_;
        return stringMatcher == null ? StringMatcher.getDefaultInstance() : stringMatcher;
    }

    public n getMatchOrBuilder() {
        return getMatch();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HistogramBucketSettings> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.match_ != null ? 0 + CodedOutputStream.G(1, getMatch()) : 0;
        int size = getBucketsList().size() * 8;
        int i10 = G + size;
        if (!getBucketsList().isEmpty()) {
            i10 = i10 + 1 + CodedOutputStream.y(size);
        }
        this.bucketsMemoizedSerializedSize = size;
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasMatch() {
        return this.match_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMatch()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMatch().hashCode();
        }
        if (getBucketsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getBucketsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.f48922j.d(HistogramBucketSettings.class, b.class);
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
        return new HistogramBucketSettings();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (this.match_ != null) {
            codedOutputStream.L0(1, getMatch());
        }
        if (getBucketsList().size() > 0) {
            codedOutputStream.d1(18);
            codedOutputStream.d1(this.bucketsMemoizedSerializedSize);
        }
        for (int i9 = 0; i9 < this.buckets_.size(); i9++) {
            codedOutputStream.u0(this.buckets_.getDouble(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HistogramBucketSettings(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HistogramBucketSettings histogramBucketSettings) {
        return DEFAULT_INSTANCE.toBuilder().h0(histogramBucketSettings);
    }

    public static HistogramBucketSettings parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HistogramBucketSettings(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.bucketsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HistogramBucketSettings parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HistogramBucketSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HistogramBucketSettings getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static HistogramBucketSettings parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    public static HistogramBucketSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    private HistogramBucketSettings() {
        this.bucketsMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.buckets_ = GeneratedMessageV3.emptyDoubleList();
    }

    public static HistogramBucketSettings parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HistogramBucketSettings parseFrom(InputStream inputStream) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HistogramBucketSettings parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HistogramBucketSettings(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                StringMatcher stringMatcher = this.match_;
                                StringMatcher.c builder = stringMatcher != null ? stringMatcher.toBuilder() : null;
                                StringMatcher stringMatcher2 = (StringMatcher) pVar.B(StringMatcher.parser(), f0Var);
                                this.match_ = stringMatcher2;
                                if (builder != null) {
                                    builder.g0(stringMatcher2);
                                    this.match_ = builder.I();
                                }
                            } else if (L == 17) {
                                if (!(z11 & true)) {
                                    this.buckets_ = GeneratedMessageV3.newDoubleList();
                                    z11 |= true;
                                }
                                this.buckets_.N0(pVar.t());
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                int q10 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.buckets_ = GeneratedMessageV3.newDoubleList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.buckets_.N0(pVar.t());
                                }
                                pVar.p(q10);
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
                if (z11 & true) {
                    this.buckets_.C();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static HistogramBucketSettings parseFrom(p pVar) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HistogramBucketSettings parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HistogramBucketSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
