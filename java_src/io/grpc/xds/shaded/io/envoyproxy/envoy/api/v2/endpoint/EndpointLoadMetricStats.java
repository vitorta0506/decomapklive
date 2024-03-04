package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class EndpointLoadMetricStats extends GeneratedMessageV3 implements c {
    public static final int METRIC_NAME_FIELD_NUMBER = 1;
    public static final int NUM_REQUESTS_FINISHED_WITH_METRIC_FIELD_NUMBER = 2;
    public static final int TOTAL_METRIC_VALUE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object metricName_;
    private long numRequestsFinishedWithMetric_;
    private double totalMetricValue_;
    private static final EndpointLoadMetricStats DEFAULT_INSTANCE = new EndpointLoadMetricStats();
    private static final e2<EndpointLoadMetricStats> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<EndpointLoadMetricStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public EndpointLoadMetricStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new EndpointLoadMetricStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private Object f46829e;

        /* renamed from: f  reason: collision with root package name */
        private long f46830f;

        /* renamed from: g  reason: collision with root package name */
        private double f46831g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f46888f.d(EndpointLoadMetricStats.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public EndpointLoadMetricStats build() {
            EndpointLoadMetricStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public EndpointLoadMetricStats I() {
            EndpointLoadMetricStats endpointLoadMetricStats = new EndpointLoadMetricStats(this, (a) null);
            endpointLoadMetricStats.metricName_ = this.f46829e;
            endpointLoadMetricStats.numRequestsFinishedWithMetric_ = this.f46830f;
            endpointLoadMetricStats.totalMetricValue_ = this.f46831g;
            Q();
            return endpointLoadMetricStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public EndpointLoadMetricStats getDefaultInstanceForType() {
            return EndpointLoadMetricStats.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof EndpointLoadMetricStats) {
                return g0((EndpointLoadMetricStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(EndpointLoadMetricStats endpointLoadMetricStats) {
            if (endpointLoadMetricStats == EndpointLoadMetricStats.getDefaultInstance()) {
                return this;
            }
            if (!endpointLoadMetricStats.getMetricName().isEmpty()) {
                this.f46829e = endpointLoadMetricStats.metricName_;
                R();
            }
            if (endpointLoadMetricStats.getNumRequestsFinishedWithMetric() != 0) {
                j0(endpointLoadMetricStats.getNumRequestsFinishedWithMetric());
            }
            if (endpointLoadMetricStats.getTotalMetricValue() != 0.0d) {
                k0(endpointLoadMetricStats.getTotalMetricValue());
            }
            z(((GeneratedMessageV3) endpointLoadMetricStats).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f46887e;
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

        public b j0(long j10) {
            this.f46830f = j10;
            R();
            return this;
        }

        public b k0(double d10) {
            this.f46831g = d10;
            R();
            return this;
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
            this.f46829e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46829e = "";
            b0();
        }
    }

    /* synthetic */ EndpointLoadMetricStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static EndpointLoadMetricStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f46887e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static EndpointLoadMetricStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static EndpointLoadMetricStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<EndpointLoadMetricStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EndpointLoadMetricStats)) {
            return super.equals(obj);
        }
        EndpointLoadMetricStats endpointLoadMetricStats = (EndpointLoadMetricStats) obj;
        return getMetricName().equals(endpointLoadMetricStats.getMetricName()) && getNumRequestsFinishedWithMetric() == endpointLoadMetricStats.getNumRequestsFinishedWithMetric() && Double.doubleToLongBits(getTotalMetricValue()) == Double.doubleToLongBits(endpointLoadMetricStats.getTotalMetricValue()) && this.unknownFields.equals(endpointLoadMetricStats.unknownFields);
    }

    public String getMetricName() {
        Object obj = this.metricName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.metricName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getMetricNameBytes() {
        Object obj = this.metricName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.metricName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getNumRequestsFinishedWithMetric() {
        return this.numRequestsFinishedWithMetric_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<EndpointLoadMetricStats> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.metricName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.metricName_);
        long j10 = this.numRequestsFinishedWithMetric_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.a0(2, j10);
        }
        if (Double.doubleToRawLongBits(this.totalMetricValue_) != 0) {
            computeStringSize += CodedOutputStream.j(3, this.totalMetricValue_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public double getTotalMetricValue() {
        return this.totalMetricValue_;
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
        int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMetricName().hashCode()) * 37) + 2) * 53) + u0.i(getNumRequestsFinishedWithMetric())) * 37) + 3) * 53) + u0.i(Double.doubleToLongBits(getTotalMetricValue()))) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f46888f.d(EndpointLoadMetricStats.class, b.class);
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
        return new EndpointLoadMetricStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.metricName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.metricName_);
        }
        long j10 = this.numRequestsFinishedWithMetric_;
        if (j10 != 0) {
            codedOutputStream.e1(2, j10);
        }
        if (Double.doubleToRawLongBits(this.totalMetricValue_) != 0) {
            codedOutputStream.t0(3, this.totalMetricValue_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ EndpointLoadMetricStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(EndpointLoadMetricStats endpointLoadMetricStats) {
        return DEFAULT_INSTANCE.toBuilder().g0(endpointLoadMetricStats);
    }

    public static EndpointLoadMetricStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private EndpointLoadMetricStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static EndpointLoadMetricStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static EndpointLoadMetricStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public EndpointLoadMetricStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static EndpointLoadMetricStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private EndpointLoadMetricStats() {
        this.memoizedIsInitialized = (byte) -1;
        this.metricName_ = "";
    }

    public static EndpointLoadMetricStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static EndpointLoadMetricStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static EndpointLoadMetricStats parseFrom(InputStream inputStream) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private EndpointLoadMetricStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.metricName_ = pVar.K();
                        } else if (L == 16) {
                            this.numRequestsFinishedWithMetric_ = pVar.N();
                        } else if (L != 25) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.totalMetricValue_ = pVar.t();
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

    public static EndpointLoadMetricStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static EndpointLoadMetricStats parseFrom(p pVar) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static EndpointLoadMetricStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (EndpointLoadMetricStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
