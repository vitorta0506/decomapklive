package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.EndpointLoadMetricStats;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UpstreamEndpointStats extends GeneratedMessageV3 implements k {
    public static final int ADDRESS_FIELD_NUMBER = 1;
    public static final int LOAD_METRIC_STATS_FIELD_NUMBER = 5;
    public static final int METADATA_FIELD_NUMBER = 6;
    public static final int TOTAL_ERROR_REQUESTS_FIELD_NUMBER = 4;
    public static final int TOTAL_ISSUED_REQUESTS_FIELD_NUMBER = 7;
    public static final int TOTAL_REQUESTS_IN_PROGRESS_FIELD_NUMBER = 3;
    public static final int TOTAL_SUCCESSFUL_REQUESTS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Address address_;
    private List<EndpointLoadMetricStats> loadMetricStats_;
    private byte memoizedIsInitialized;
    private Struct metadata_;
    private long totalErrorRequests_;
    private long totalIssuedRequests_;
    private long totalRequestsInProgress_;
    private long totalSuccessfulRequests_;
    private static final UpstreamEndpointStats DEFAULT_INSTANCE = new UpstreamEndpointStats();
    private static final e2<UpstreamEndpointStats> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<UpstreamEndpointStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpstreamEndpointStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpstreamEndpointStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private int f48391e;

        /* renamed from: f  reason: collision with root package name */
        private Address f48392f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f48393g;

        /* renamed from: h  reason: collision with root package name */
        private Struct f48394h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f48395i;

        /* renamed from: j  reason: collision with root package name */
        private long f48396j;

        /* renamed from: k  reason: collision with root package name */
        private long f48397k;

        /* renamed from: l  reason: collision with root package name */
        private long f48398l;

        /* renamed from: m  reason: collision with root package name */
        private long f48399m;

        /* renamed from: n  reason: collision with root package name */
        private List<EndpointLoadMetricStats> f48400n;

        /* renamed from: o  reason: collision with root package name */
        private l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, d> f48401o;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48391e & 1) == 0) {
                this.f48400n = new ArrayList(this.f48400n);
                this.f48391e |= 1;
            }
        }

        private l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, d> d0() {
            if (this.f48401o == null) {
                this.f48401o = new l2<>(this.f48400n, (this.f48391e & 1) != 0, H(), O());
                this.f48400n = null;
            }
            return this.f48401o;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f48439d.d(UpstreamEndpointStats.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpstreamEndpointStats build() {
            UpstreamEndpointStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpstreamEndpointStats I() {
            UpstreamEndpointStats upstreamEndpointStats = new UpstreamEndpointStats(this, (a) null);
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48393g;
            if (q2Var == null) {
                upstreamEndpointStats.address_ = this.f48392f;
            } else {
                upstreamEndpointStats.address_ = q2Var.b();
            }
            q2<Struct, Struct.b, u2> q2Var2 = this.f48395i;
            if (q2Var2 == null) {
                upstreamEndpointStats.metadata_ = this.f48394h;
            } else {
                upstreamEndpointStats.metadata_ = q2Var2.b();
            }
            upstreamEndpointStats.totalSuccessfulRequests_ = this.f48396j;
            upstreamEndpointStats.totalRequestsInProgress_ = this.f48397k;
            upstreamEndpointStats.totalErrorRequests_ = this.f48398l;
            upstreamEndpointStats.totalIssuedRequests_ = this.f48399m;
            l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, d> l2Var = this.f48401o;
            if (l2Var == null) {
                if ((this.f48391e & 1) != 0) {
                    this.f48400n = Collections.unmodifiableList(this.f48400n);
                    this.f48391e &= -2;
                }
                upstreamEndpointStats.loadMetricStats_ = this.f48400n;
            } else {
                upstreamEndpointStats.loadMetricStats_ = l2Var.e();
            }
            Q();
            return upstreamEndpointStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public UpstreamEndpointStats getDefaultInstanceForType() {
            return UpstreamEndpointStats.getDefaultInstance();
        }

        public b g0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48393g;
            if (q2Var == null) {
                Address address2 = this.f48392f;
                if (address2 != null) {
                    this.f48392f = Address.newBuilder(address2).h0(address).I();
                } else {
                    this.f48392f = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f48438c;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.j0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.j0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.UpstreamEndpointStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpstreamEndpointStats) {
                return j0((UpstreamEndpointStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(UpstreamEndpointStats upstreamEndpointStats) {
            if (upstreamEndpointStats == UpstreamEndpointStats.getDefaultInstance()) {
                return this;
            }
            if (upstreamEndpointStats.hasAddress()) {
                g0(upstreamEndpointStats.getAddress());
            }
            if (upstreamEndpointStats.hasMetadata()) {
                k0(upstreamEndpointStats.getMetadata());
            }
            if (upstreamEndpointStats.getTotalSuccessfulRequests() != 0) {
                r0(upstreamEndpointStats.getTotalSuccessfulRequests());
            }
            if (upstreamEndpointStats.getTotalRequestsInProgress() != 0) {
                q0(upstreamEndpointStats.getTotalRequestsInProgress());
            }
            if (upstreamEndpointStats.getTotalErrorRequests() != 0) {
                n0(upstreamEndpointStats.getTotalErrorRequests());
            }
            if (upstreamEndpointStats.getTotalIssuedRequests() != 0) {
                o0(upstreamEndpointStats.getTotalIssuedRequests());
            }
            if (this.f48401o == null) {
                if (!upstreamEndpointStats.loadMetricStats_.isEmpty()) {
                    if (this.f48400n.isEmpty()) {
                        this.f48400n = upstreamEndpointStats.loadMetricStats_;
                        this.f48391e &= -2;
                    } else {
                        a0();
                        this.f48400n.addAll(upstreamEndpointStats.loadMetricStats_);
                    }
                    R();
                }
            } else if (!upstreamEndpointStats.loadMetricStats_.isEmpty()) {
                if (this.f48401o.k()) {
                    this.f48401o.f();
                    this.f48401o = null;
                    this.f48400n = upstreamEndpointStats.loadMetricStats_;
                    this.f48391e &= -2;
                    this.f48401o = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48401o.b(upstreamEndpointStats.loadMetricStats_);
                }
            }
            z(((GeneratedMessageV3) upstreamEndpointStats).unknownFields);
            R();
            return this;
        }

        public b k0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f48395i;
            if (q2Var == null) {
                Struct struct2 = this.f48394h;
                if (struct2 != null) {
                    this.f48394h = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f48394h = struct;
                }
                R();
            } else {
                q2Var.e(struct);
            }
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

        public b n0(long j10) {
            this.f48398l = j10;
            R();
            return this;
        }

        public b o0(long j10) {
            this.f48399m = j10;
            R();
            return this;
        }

        public b q0(long j10) {
            this.f48397k = j10;
            R();
            return this;
        }

        public b r0(long j10) {
            this.f48396j = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f48400n = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48400n = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ UpstreamEndpointStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpstreamEndpointStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f48438c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpstreamEndpointStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpstreamEndpointStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpstreamEndpointStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpstreamEndpointStats)) {
            return super.equals(obj);
        }
        UpstreamEndpointStats upstreamEndpointStats = (UpstreamEndpointStats) obj;
        if (hasAddress() != upstreamEndpointStats.hasAddress()) {
            return false;
        }
        if ((!hasAddress() || getAddress().equals(upstreamEndpointStats.getAddress())) && hasMetadata() == upstreamEndpointStats.hasMetadata()) {
            return (!hasMetadata() || getMetadata().equals(upstreamEndpointStats.getMetadata())) && getTotalSuccessfulRequests() == upstreamEndpointStats.getTotalSuccessfulRequests() && getTotalRequestsInProgress() == upstreamEndpointStats.getTotalRequestsInProgress() && getTotalErrorRequests() == upstreamEndpointStats.getTotalErrorRequests() && getTotalIssuedRequests() == upstreamEndpointStats.getTotalIssuedRequests() && getLoadMetricStatsList().equals(upstreamEndpointStats.getLoadMetricStatsList()) && this.unknownFields.equals(upstreamEndpointStats.unknownFields);
        }
        return false;
    }

    public Address getAddress() {
        Address address = this.address_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getAddressOrBuilder() {
        return getAddress();
    }

    public EndpointLoadMetricStats getLoadMetricStats(int i9) {
        return this.loadMetricStats_.get(i9);
    }

    public int getLoadMetricStatsCount() {
        return this.loadMetricStats_.size();
    }

    public List<EndpointLoadMetricStats> getLoadMetricStatsList() {
        return this.loadMetricStats_;
    }

    public d getLoadMetricStatsOrBuilder(int i9) {
        return this.loadMetricStats_.get(i9);
    }

    public List<? extends d> getLoadMetricStatsOrBuilderList() {
        return this.loadMetricStats_;
    }

    public Struct getMetadata() {
        Struct struct = this.metadata_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getMetadataOrBuilder() {
        return getMetadata();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpstreamEndpointStats> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.address_ != null ? CodedOutputStream.G(1, getAddress()) + 0 : 0;
        long j10 = this.totalSuccessfulRequests_;
        if (j10 != 0) {
            G += CodedOutputStream.a0(2, j10);
        }
        long j11 = this.totalRequestsInProgress_;
        if (j11 != 0) {
            G += CodedOutputStream.a0(3, j11);
        }
        long j12 = this.totalErrorRequests_;
        if (j12 != 0) {
            G += CodedOutputStream.a0(4, j12);
        }
        for (int i10 = 0; i10 < this.loadMetricStats_.size(); i10++) {
            G += CodedOutputStream.G(5, this.loadMetricStats_.get(i10));
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(6, getMetadata());
        }
        long j13 = this.totalIssuedRequests_;
        if (j13 != 0) {
            G += CodedOutputStream.a0(7, j13);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public long getTotalErrorRequests() {
        return this.totalErrorRequests_;
    }

    public long getTotalIssuedRequests() {
        return this.totalIssuedRequests_;
    }

    public long getTotalRequestsInProgress() {
        return this.totalRequestsInProgress_;
    }

    public long getTotalSuccessfulRequests() {
        return this.totalSuccessfulRequests_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAddress() {
        return this.address_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasAddress()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAddress().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getMetadata().hashCode();
        }
        int i10 = (((((((((((((((hashCode * 37) + 2) * 53) + u0.i(getTotalSuccessfulRequests())) * 37) + 3) * 53) + u0.i(getTotalRequestsInProgress())) * 37) + 4) * 53) + u0.i(getTotalErrorRequests())) * 37) + 7) * 53) + u0.i(getTotalIssuedRequests());
        if (getLoadMetricStatsCount() > 0) {
            i10 = (((i10 * 37) + 5) * 53) + getLoadMetricStatsList().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f48439d.d(UpstreamEndpointStats.class, b.class);
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
        return new UpstreamEndpointStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.address_ != null) {
            codedOutputStream.L0(1, getAddress());
        }
        long j10 = this.totalSuccessfulRequests_;
        if (j10 != 0) {
            codedOutputStream.e1(2, j10);
        }
        long j11 = this.totalRequestsInProgress_;
        if (j11 != 0) {
            codedOutputStream.e1(3, j11);
        }
        long j12 = this.totalErrorRequests_;
        if (j12 != 0) {
            codedOutputStream.e1(4, j12);
        }
        for (int i9 = 0; i9 < this.loadMetricStats_.size(); i9++) {
            codedOutputStream.L0(5, this.loadMetricStats_.get(i9));
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(6, getMetadata());
        }
        long j13 = this.totalIssuedRequests_;
        if (j13 != 0) {
            codedOutputStream.e1(7, j13);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpstreamEndpointStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpstreamEndpointStats upstreamEndpointStats) {
        return DEFAULT_INSTANCE.toBuilder().j0(upstreamEndpointStats);
    }

    public static UpstreamEndpointStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpstreamEndpointStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamEndpointStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamEndpointStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpstreamEndpointStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static UpstreamEndpointStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpstreamEndpointStats() {
        this.memoizedIsInitialized = (byte) -1;
        this.loadMetricStats_ = Collections.emptyList();
    }

    public static UpstreamEndpointStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpstreamEndpointStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static UpstreamEndpointStats parseFrom(InputStream inputStream) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private UpstreamEndpointStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Address address = this.address_;
                            Address.c builder = address != null ? address.toBuilder() : null;
                            Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                            this.address_ = address2;
                            if (builder != null) {
                                builder.h0(address2);
                                this.address_ = builder.I();
                            }
                        } else if (L == 16) {
                            this.totalSuccessfulRequests_ = pVar.N();
                        } else if (L == 24) {
                            this.totalRequestsInProgress_ = pVar.N();
                        } else if (L == 32) {
                            this.totalErrorRequests_ = pVar.N();
                        } else if (L == 42) {
                            if (!(z11 & true)) {
                                this.loadMetricStats_ = new ArrayList();
                                z11 |= true;
                            }
                            this.loadMetricStats_.add((EndpointLoadMetricStats) pVar.B(EndpointLoadMetricStats.parser(), f0Var));
                        } else if (L == 50) {
                            Struct struct = this.metadata_;
                            Struct.b builder2 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.metadata_ = struct2;
                            if (builder2 != null) {
                                builder2.i0(struct2);
                                this.metadata_ = builder2.I();
                            }
                        } else if (L != 56) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.totalIssuedRequests_ = pVar.N();
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
                    this.loadMetricStats_ = Collections.unmodifiableList(this.loadMetricStats_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static UpstreamEndpointStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamEndpointStats parseFrom(p pVar) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpstreamEndpointStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpstreamEndpointStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
