package io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class LoadStatsResponse extends GeneratedMessageV3 implements r1 {
    public static final int CLUSTERS_FIELD_NUMBER = 1;
    public static final int LOAD_REPORTING_INTERVAL_FIELD_NUMBER = 2;
    public static final int REPORT_ENDPOINT_GRANULARITY_FIELD_NUMBER = 3;
    public static final int SEND_ALL_CLUSTERS_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private z0 clusters_;
    private Duration loadReportingInterval_;
    private byte memoizedIsInitialized;
    private boolean reportEndpointGranularity_;
    private boolean sendAllClusters_;
    private static final LoadStatsResponse DEFAULT_INSTANCE = new LoadStatsResponse();
    private static final e2<LoadStatsResponse> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends c<LoadStatsResponse> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public LoadStatsResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new LoadStatsResponse(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f50156e;

        /* renamed from: f  reason: collision with root package name */
        private z0 f50157f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f50158g;

        /* renamed from: h  reason: collision with root package name */
        private Duration f50159h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f50160i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f50161j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50156e & 1) == 0) {
                this.f50157f = new y0(this.f50157f);
                this.f50156e |= 1;
            }
        }

        private void d0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.b.f50167d.d(LoadStatsResponse.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public LoadStatsResponse build() {
            LoadStatsResponse I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public LoadStatsResponse I() {
            LoadStatsResponse loadStatsResponse = new LoadStatsResponse(this, (a) null);
            if ((this.f50156e & 1) != 0) {
                this.f50157f = this.f50157f.V0();
                this.f50156e &= -2;
            }
            loadStatsResponse.clusters_ = this.f50157f;
            loadStatsResponse.sendAllClusters_ = this.f50158g;
            q2<Duration, Duration.b, v> q2Var = this.f50160i;
            if (q2Var == null) {
                loadStatsResponse.loadReportingInterval_ = this.f50159h;
            } else {
                loadStatsResponse.loadReportingInterval_ = q2Var.b();
            }
            loadStatsResponse.reportEndpointGranularity_ = this.f50161j;
            Q();
            return loadStatsResponse;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public LoadStatsResponse getDefaultInstanceForType() {
            return LoadStatsResponse.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.LoadStatsResponse$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof LoadStatsResponse) {
                return h0((LoadStatsResponse) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.b.f50166c;
        }

        public b h0(LoadStatsResponse loadStatsResponse) {
            if (loadStatsResponse == LoadStatsResponse.getDefaultInstance()) {
                return this;
            }
            if (!loadStatsResponse.clusters_.isEmpty()) {
                if (this.f50157f.isEmpty()) {
                    this.f50157f = loadStatsResponse.clusters_;
                    this.f50156e &= -2;
                } else {
                    a0();
                    this.f50157f.addAll(loadStatsResponse.clusters_);
                }
                R();
            }
            if (loadStatsResponse.getSendAllClusters()) {
                m0(loadStatsResponse.getSendAllClusters());
            }
            if (loadStatsResponse.hasLoadReportingInterval()) {
                i0(loadStatsResponse.getLoadReportingInterval());
            }
            if (loadStatsResponse.getReportEndpointGranularity()) {
                l0(loadStatsResponse.getReportEndpointGranularity());
            }
            z(((GeneratedMessageV3) loadStatsResponse).unknownFields);
            R();
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f50160i;
            if (q2Var == null) {
                Duration duration2 = this.f50159h;
                if (duration2 != null) {
                    this.f50159h = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f50159h = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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

        public b l0(boolean z10) {
            this.f50161j = z10;
            R();
            return this;
        }

        public b m0(boolean z10) {
            this.f50158g = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f50157f = y0.f15344d;
            d0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50157f = y0.f15344d;
            d0();
        }
    }

    /* synthetic */ LoadStatsResponse(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static LoadStatsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.b.f50166c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static LoadStatsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static LoadStatsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<LoadStatsResponse> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LoadStatsResponse)) {
            return super.equals(obj);
        }
        LoadStatsResponse loadStatsResponse = (LoadStatsResponse) obj;
        if (m1647getClustersList().equals(loadStatsResponse.m1647getClustersList()) && getSendAllClusters() == loadStatsResponse.getSendAllClusters() && hasLoadReportingInterval() == loadStatsResponse.hasLoadReportingInterval()) {
            return (!hasLoadReportingInterval() || getLoadReportingInterval().equals(loadStatsResponse.getLoadReportingInterval())) && getReportEndpointGranularity() == loadStatsResponse.getReportEndpointGranularity() && this.unknownFields.equals(loadStatsResponse.unknownFields);
        }
        return false;
    }

    public String getClusters(int i9) {
        return this.clusters_.get(i9);
    }

    public ByteString getClustersBytes(int i9) {
        return this.clusters_.j0(i9);
    }

    public int getClustersCount() {
        return this.clusters_.size();
    }

    public Duration getLoadReportingInterval() {
        Duration duration = this.loadReportingInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getLoadReportingIntervalOrBuilder() {
        return getLoadReportingInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<LoadStatsResponse> getParserForType() {
        return PARSER;
    }

    public boolean getReportEndpointGranularity() {
        return this.reportEndpointGranularity_;
    }

    public boolean getSendAllClusters() {
        return this.sendAllClusters_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.clusters_.size(); i11++) {
            i10 += GeneratedMessageV3.computeStringSizeNoTag(this.clusters_.c1(i11));
        }
        int size = 0 + i10 + (m1647getClustersList().size() * 1);
        if (this.loadReportingInterval_ != null) {
            size += CodedOutputStream.G(2, getLoadReportingInterval());
        }
        boolean z10 = this.reportEndpointGranularity_;
        if (z10) {
            size += CodedOutputStream.e(3, z10);
        }
        boolean z11 = this.sendAllClusters_;
        if (z11) {
            size += CodedOutputStream.e(4, z11);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasLoadReportingInterval() {
        return this.loadReportingInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getClustersCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + m1647getClustersList().hashCode();
        }
        int d10 = (((hashCode * 37) + 4) * 53) + u0.d(getSendAllClusters());
        if (hasLoadReportingInterval()) {
            d10 = (((d10 * 37) + 2) * 53) + getLoadReportingInterval().hashCode();
        }
        int d11 = (((((d10 * 37) + 3) * 53) + u0.d(getReportEndpointGranularity())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d11;
        return d11;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3.b.f50167d.d(LoadStatsResponse.class, b.class);
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
        return new LoadStatsResponse();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.clusters_.size(); i9++) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.clusters_.c1(i9));
        }
        if (this.loadReportingInterval_ != null) {
            codedOutputStream.L0(2, getLoadReportingInterval());
        }
        boolean z10 = this.reportEndpointGranularity_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        boolean z11 = this.sendAllClusters_;
        if (z11) {
            codedOutputStream.n0(4, z11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ LoadStatsResponse(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(LoadStatsResponse loadStatsResponse) {
        return DEFAULT_INSTANCE.toBuilder().h0(loadStatsResponse);
    }

    public static LoadStatsResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getClustersList */
    public i2 m1647getClustersList() {
        return this.clusters_;
    }

    private LoadStatsResponse(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static LoadStatsResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadStatsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public LoadStatsResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static LoadStatsResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private LoadStatsResponse() {
        this.memoizedIsInitialized = (byte) -1;
        this.clusters_ = y0.f15344d;
    }

    public static LoadStatsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static LoadStatsResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static LoadStatsResponse parseFrom(InputStream inputStream) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private LoadStatsResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                String K = pVar.K();
                                if (!(z11 & true)) {
                                    this.clusters_ = new y0();
                                    z11 |= true;
                                }
                                this.clusters_.add(K);
                            } else if (L == 18) {
                                Duration duration = this.loadReportingInterval_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.loadReportingInterval_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.loadReportingInterval_ = builder.I();
                                }
                            } else if (L == 24) {
                                this.reportEndpointGranularity_ = pVar.r();
                            } else if (L != 32) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.sendAllClusters_ = pVar.r();
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
                    this.clusters_ = this.clusters_.V0();
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static LoadStatsResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static LoadStatsResponse parseFrom(p pVar) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static LoadStatsResponse parseFrom(p pVar, f0 f0Var) throws IOException {
        return (LoadStatsResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
