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
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Locality;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.c0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.EndpointLoadMetricStats;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamEndpointStats;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UpstreamLocalityStats extends GeneratedMessageV3 implements i {
    public static final int LOAD_METRIC_STATS_FIELD_NUMBER = 5;
    public static final int LOCALITY_FIELD_NUMBER = 1;
    public static final int PRIORITY_FIELD_NUMBER = 6;
    public static final int TOTAL_ERROR_REQUESTS_FIELD_NUMBER = 4;
    public static final int TOTAL_ISSUED_REQUESTS_FIELD_NUMBER = 8;
    public static final int TOTAL_REQUESTS_IN_PROGRESS_FIELD_NUMBER = 3;
    public static final int TOTAL_SUCCESSFUL_REQUESTS_FIELD_NUMBER = 2;
    public static final int UPSTREAM_ENDPOINT_STATS_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private List<EndpointLoadMetricStats> loadMetricStats_;
    private Locality locality_;
    private byte memoizedIsInitialized;
    private int priority_;
    private long totalErrorRequests_;
    private long totalIssuedRequests_;
    private long totalRequestsInProgress_;
    private long totalSuccessfulRequests_;
    private List<UpstreamEndpointStats> upstreamEndpointStats_;
    private static final UpstreamLocalityStats DEFAULT_INSTANCE = new UpstreamLocalityStats();
    private static final e2<UpstreamLocalityStats> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<UpstreamLocalityStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpstreamLocalityStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpstreamLocalityStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f46862e;

        /* renamed from: f  reason: collision with root package name */
        private Locality f46863f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Locality, Locality.b, c0> f46864g;

        /* renamed from: h  reason: collision with root package name */
        private long f46865h;

        /* renamed from: i  reason: collision with root package name */
        private long f46866i;

        /* renamed from: j  reason: collision with root package name */
        private long f46867j;

        /* renamed from: k  reason: collision with root package name */
        private long f46868k;

        /* renamed from: l  reason: collision with root package name */
        private List<EndpointLoadMetricStats> f46869l;

        /* renamed from: m  reason: collision with root package name */
        private l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, c> f46870m;

        /* renamed from: n  reason: collision with root package name */
        private List<UpstreamEndpointStats> f46871n;

        /* renamed from: o  reason: collision with root package name */
        private l2<UpstreamEndpointStats, UpstreamEndpointStats.b, h> f46872o;

        /* renamed from: p  reason: collision with root package name */
        private int f46873p;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46862e & 1) == 0) {
                this.f46869l = new ArrayList(this.f46869l);
                this.f46862e |= 1;
            }
        }

        private void b0() {
            if ((this.f46862e & 2) == 0) {
                this.f46871n = new ArrayList(this.f46871n);
                this.f46862e |= 2;
            }
        }

        private l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, c> e0() {
            if (this.f46870m == null) {
                this.f46870m = new l2<>(this.f46869l, (this.f46862e & 1) != 0, H(), O());
                this.f46869l = null;
            }
            return this.f46870m;
        }

        private l2<UpstreamEndpointStats, UpstreamEndpointStats.b, h> g0() {
            if (this.f46872o == null) {
                this.f46872o = new l2<>(this.f46871n, (this.f46862e & 2) != 0, H(), O());
                this.f46871n = null;
            }
            return this.f46872o;
        }

        private void h0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
                g0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f46884b.d(UpstreamLocalityStats.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpstreamLocalityStats build() {
            UpstreamLocalityStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpstreamLocalityStats I() {
            UpstreamLocalityStats upstreamLocalityStats = new UpstreamLocalityStats(this, (a) null);
            q2<Locality, Locality.b, c0> q2Var = this.f46864g;
            if (q2Var == null) {
                upstreamLocalityStats.locality_ = this.f46863f;
            } else {
                upstreamLocalityStats.locality_ = q2Var.b();
            }
            upstreamLocalityStats.totalSuccessfulRequests_ = this.f46865h;
            upstreamLocalityStats.totalRequestsInProgress_ = this.f46866i;
            upstreamLocalityStats.totalErrorRequests_ = this.f46867j;
            upstreamLocalityStats.totalIssuedRequests_ = this.f46868k;
            l2<EndpointLoadMetricStats, EndpointLoadMetricStats.b, c> l2Var = this.f46870m;
            if (l2Var == null) {
                if ((this.f46862e & 1) != 0) {
                    this.f46869l = Collections.unmodifiableList(this.f46869l);
                    this.f46862e &= -2;
                }
                upstreamLocalityStats.loadMetricStats_ = this.f46869l;
            } else {
                upstreamLocalityStats.loadMetricStats_ = l2Var.e();
            }
            l2<UpstreamEndpointStats, UpstreamEndpointStats.b, h> l2Var2 = this.f46872o;
            if (l2Var2 == null) {
                if ((this.f46862e & 2) != 0) {
                    this.f46871n = Collections.unmodifiableList(this.f46871n);
                    this.f46862e &= -3;
                }
                upstreamLocalityStats.upstreamEndpointStats_ = this.f46871n;
            } else {
                upstreamLocalityStats.upstreamEndpointStats_ = l2Var2.e();
            }
            upstreamLocalityStats.priority_ = this.f46873p;
            Q();
            return upstreamLocalityStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public UpstreamLocalityStats getDefaultInstanceForType() {
            return UpstreamLocalityStats.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f46883a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats.access$1500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.k0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.k0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpstreamLocalityStats) {
                return k0((UpstreamLocalityStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b k0(UpstreamLocalityStats upstreamLocalityStats) {
            if (upstreamLocalityStats == UpstreamLocalityStats.getDefaultInstance()) {
                return this;
            }
            if (upstreamLocalityStats.hasLocality()) {
                l0(upstreamLocalityStats.getLocality());
            }
            if (upstreamLocalityStats.getTotalSuccessfulRequests() != 0) {
                u0(upstreamLocalityStats.getTotalSuccessfulRequests());
            }
            if (upstreamLocalityStats.getTotalRequestsInProgress() != 0) {
                t0(upstreamLocalityStats.getTotalRequestsInProgress());
            }
            if (upstreamLocalityStats.getTotalErrorRequests() != 0) {
                r0(upstreamLocalityStats.getTotalErrorRequests());
            }
            if (upstreamLocalityStats.getTotalIssuedRequests() != 0) {
                s0(upstreamLocalityStats.getTotalIssuedRequests());
            }
            if (this.f46870m == null) {
                if (!upstreamLocalityStats.loadMetricStats_.isEmpty()) {
                    if (this.f46869l.isEmpty()) {
                        this.f46869l = upstreamLocalityStats.loadMetricStats_;
                        this.f46862e &= -2;
                    } else {
                        a0();
                        this.f46869l.addAll(upstreamLocalityStats.loadMetricStats_);
                    }
                    R();
                }
            } else if (!upstreamLocalityStats.loadMetricStats_.isEmpty()) {
                if (this.f46870m.k()) {
                    this.f46870m.f();
                    this.f46870m = null;
                    this.f46869l = upstreamLocalityStats.loadMetricStats_;
                    this.f46862e &= -2;
                    this.f46870m = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f46870m.b(upstreamLocalityStats.loadMetricStats_);
                }
            }
            if (this.f46872o == null) {
                if (!upstreamLocalityStats.upstreamEndpointStats_.isEmpty()) {
                    if (this.f46871n.isEmpty()) {
                        this.f46871n = upstreamLocalityStats.upstreamEndpointStats_;
                        this.f46862e &= -3;
                    } else {
                        b0();
                        this.f46871n.addAll(upstreamLocalityStats.upstreamEndpointStats_);
                    }
                    R();
                }
            } else if (!upstreamLocalityStats.upstreamEndpointStats_.isEmpty()) {
                if (this.f46872o.k()) {
                    this.f46872o.f();
                    this.f46872o = null;
                    this.f46871n = upstreamLocalityStats.upstreamEndpointStats_;
                    this.f46862e &= -3;
                    this.f46872o = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.f46872o.b(upstreamLocalityStats.upstreamEndpointStats_);
                }
            }
            if (upstreamLocalityStats.getPriority() != 0) {
                q0(upstreamLocalityStats.getPriority());
            }
            z(((GeneratedMessageV3) upstreamLocalityStats).unknownFields);
            R();
            return this;
        }

        public b l0(Locality locality) {
            q2<Locality, Locality.b, c0> q2Var = this.f46864g;
            if (q2Var == null) {
                Locality locality2 = this.f46863f;
                if (locality2 != null) {
                    this.f46863f = Locality.newBuilder(locality2).g0(locality).I();
                } else {
                    this.f46863f = locality;
                }
                R();
            } else {
                q2Var.e(locality);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(Locality.b bVar) {
            q2<Locality, Locality.b, c0> q2Var = this.f46864g;
            if (q2Var == null) {
                this.f46863f = bVar.build();
                R();
            } else {
                q2Var.g(bVar.build());
            }
            return this;
        }

        public b q0(int i9) {
            this.f46873p = i9;
            R();
            return this;
        }

        public b r0(long j10) {
            this.f46867j = j10;
            R();
            return this;
        }

        public b s0(long j10) {
            this.f46868k = j10;
            R();
            return this;
        }

        public b t0(long j10) {
            this.f46866i = j10;
            R();
            return this;
        }

        public b u0(long j10) {
            this.f46865h = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46869l = Collections.emptyList();
            this.f46871n = Collections.emptyList();
            h0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46869l = Collections.emptyList();
            this.f46871n = Collections.emptyList();
            h0();
        }
    }

    /* synthetic */ UpstreamLocalityStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpstreamLocalityStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f46883a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpstreamLocalityStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpstreamLocalityStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpstreamLocalityStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpstreamLocalityStats)) {
            return super.equals(obj);
        }
        UpstreamLocalityStats upstreamLocalityStats = (UpstreamLocalityStats) obj;
        if (hasLocality() != upstreamLocalityStats.hasLocality()) {
            return false;
        }
        return (!hasLocality() || getLocality().equals(upstreamLocalityStats.getLocality())) && getTotalSuccessfulRequests() == upstreamLocalityStats.getTotalSuccessfulRequests() && getTotalRequestsInProgress() == upstreamLocalityStats.getTotalRequestsInProgress() && getTotalErrorRequests() == upstreamLocalityStats.getTotalErrorRequests() && getTotalIssuedRequests() == upstreamLocalityStats.getTotalIssuedRequests() && getLoadMetricStatsList().equals(upstreamLocalityStats.getLoadMetricStatsList()) && getUpstreamEndpointStatsList().equals(upstreamLocalityStats.getUpstreamEndpointStatsList()) && getPriority() == upstreamLocalityStats.getPriority() && this.unknownFields.equals(upstreamLocalityStats.unknownFields);
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

    public c getLoadMetricStatsOrBuilder(int i9) {
        return this.loadMetricStats_.get(i9);
    }

    public List<? extends c> getLoadMetricStatsOrBuilderList() {
        return this.loadMetricStats_;
    }

    public Locality getLocality() {
        Locality locality = this.locality_;
        return locality == null ? Locality.getDefaultInstance() : locality;
    }

    public c0 getLocalityOrBuilder() {
        return getLocality();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpstreamLocalityStats> getParserForType() {
        return PARSER;
    }

    public int getPriority() {
        return this.priority_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.locality_ != null ? CodedOutputStream.G(1, getLocality()) + 0 : 0;
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
        int i11 = this.priority_;
        if (i11 != 0) {
            G += CodedOutputStream.Y(6, i11);
        }
        for (int i12 = 0; i12 < this.upstreamEndpointStats_.size(); i12++) {
            G += CodedOutputStream.G(7, this.upstreamEndpointStats_.get(i12));
        }
        long j13 = this.totalIssuedRequests_;
        if (j13 != 0) {
            G += CodedOutputStream.a0(8, j13);
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

    public UpstreamEndpointStats getUpstreamEndpointStats(int i9) {
        return this.upstreamEndpointStats_.get(i9);
    }

    public int getUpstreamEndpointStatsCount() {
        return this.upstreamEndpointStats_.size();
    }

    public List<UpstreamEndpointStats> getUpstreamEndpointStatsList() {
        return this.upstreamEndpointStats_;
    }

    public h getUpstreamEndpointStatsOrBuilder(int i9) {
        return this.upstreamEndpointStats_.get(i9);
    }

    public List<? extends h> getUpstreamEndpointStatsOrBuilderList() {
        return this.upstreamEndpointStats_;
    }

    public boolean hasLocality() {
        return this.locality_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasLocality()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getLocality().hashCode();
        }
        int i10 = (((((((((((((((hashCode * 37) + 2) * 53) + u0.i(getTotalSuccessfulRequests())) * 37) + 3) * 53) + u0.i(getTotalRequestsInProgress())) * 37) + 4) * 53) + u0.i(getTotalErrorRequests())) * 37) + 8) * 53) + u0.i(getTotalIssuedRequests());
        if (getLoadMetricStatsCount() > 0) {
            i10 = (((i10 * 37) + 5) * 53) + getLoadMetricStatsList().hashCode();
        }
        if (getUpstreamEndpointStatsCount() > 0) {
            i10 = (((i10 * 37) + 7) * 53) + getUpstreamEndpointStatsList().hashCode();
        }
        int priority = (((((i10 * 37) + 6) * 53) + getPriority()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = priority;
        return priority;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f46884b.d(UpstreamLocalityStats.class, b.class);
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
        return new UpstreamLocalityStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.locality_ != null) {
            codedOutputStream.L0(1, getLocality());
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
        int i10 = this.priority_;
        if (i10 != 0) {
            codedOutputStream.c1(6, i10);
        }
        for (int i11 = 0; i11 < this.upstreamEndpointStats_.size(); i11++) {
            codedOutputStream.L0(7, this.upstreamEndpointStats_.get(i11));
        }
        long j13 = this.totalIssuedRequests_;
        if (j13 != 0) {
            codedOutputStream.e1(8, j13);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpstreamLocalityStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpstreamLocalityStats upstreamLocalityStats) {
        return DEFAULT_INSTANCE.toBuilder().k0(upstreamLocalityStats);
    }

    public static UpstreamLocalityStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpstreamLocalityStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamLocalityStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamLocalityStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpstreamLocalityStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).k0(this);
    }

    public static UpstreamLocalityStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpstreamLocalityStats() {
        this.memoizedIsInitialized = (byte) -1;
        this.loadMetricStats_ = Collections.emptyList();
        this.upstreamEndpointStats_ = Collections.emptyList();
    }

    public static UpstreamLocalityStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpstreamLocalityStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static UpstreamLocalityStats parseFrom(InputStream inputStream) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private UpstreamLocalityStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Locality locality = this.locality_;
                                Locality.b builder = locality != null ? locality.toBuilder() : null;
                                Locality locality2 = (Locality) pVar.B(Locality.parser(), f0Var);
                                this.locality_ = locality2;
                                if (builder != null) {
                                    builder.g0(locality2);
                                    this.locality_ = builder.I();
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
                            } else if (L == 48) {
                                this.priority_ = pVar.M();
                            } else if (L == 58) {
                                if (!(z11 & true)) {
                                    this.upstreamEndpointStats_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.upstreamEndpointStats_.add((UpstreamEndpointStats) pVar.B(UpstreamEndpointStats.parser(), f0Var));
                            } else if (L != 64) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.totalIssuedRequests_ = pVar.N();
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
                    this.loadMetricStats_ = Collections.unmodifiableList(this.loadMetricStats_);
                }
                if (z11 & true) {
                    this.upstreamEndpointStats_ = Collections.unmodifiableList(this.upstreamEndpointStats_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static UpstreamLocalityStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamLocalityStats parseFrom(p pVar) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpstreamLocalityStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpstreamLocalityStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
