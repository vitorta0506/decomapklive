package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
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
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.UpstreamLocalityStats;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClusterStats extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a {
    public static final int CLUSTER_NAME_FIELD_NUMBER = 1;
    public static final int CLUSTER_SERVICE_NAME_FIELD_NUMBER = 6;
    public static final int DROPPED_REQUESTS_FIELD_NUMBER = 5;
    public static final int LOAD_REPORT_INTERVAL_FIELD_NUMBER = 4;
    public static final int TOTAL_DROPPED_REQUESTS_FIELD_NUMBER = 3;
    public static final int UPSTREAM_LOCALITY_STATS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object clusterName_;
    private volatile Object clusterServiceName_;
    private List<DroppedRequests> droppedRequests_;
    private Duration loadReportInterval_;
    private byte memoizedIsInitialized;
    private long totalDroppedRequests_;
    private List<UpstreamLocalityStats> upstreamLocalityStats_;
    private static final ClusterStats DEFAULT_INSTANCE = new ClusterStats();
    private static final e2<ClusterStats> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class DroppedRequests extends GeneratedMessageV3 implements c {
        public static final int CATEGORY_FIELD_NUMBER = 1;
        public static final int DROPPED_COUNT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object category_;
        private long droppedCount_;
        private byte memoizedIsInitialized;
        private static final DroppedRequests DEFAULT_INSTANCE = new DroppedRequests();
        private static final e2<DroppedRequests> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<DroppedRequests> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DroppedRequests m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DroppedRequests(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f46810e;

            /* renamed from: f  reason: collision with root package name */
            private long f46811f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return f.f46892j.d(DroppedRequests.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DroppedRequests build() {
                DroppedRequests I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DroppedRequests I() {
                DroppedRequests droppedRequests = new DroppedRequests(this, (a) null);
                droppedRequests.category_ = this.f46810e;
                droppedRequests.droppedCount_ = this.f46811f;
                Q();
                return droppedRequests;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DroppedRequests getDefaultInstanceForType() {
                return DroppedRequests.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.DroppedRequests.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.DroppedRequests.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats$DroppedRequests r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.DroppedRequests) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats$DroppedRequests r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.DroppedRequests) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.DroppedRequests.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats$DroppedRequests$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DroppedRequests) {
                    return g0((DroppedRequests) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(DroppedRequests droppedRequests) {
                if (droppedRequests == DroppedRequests.getDefaultInstance()) {
                    return this;
                }
                if (!droppedRequests.getCategory().isEmpty()) {
                    this.f46810e = droppedRequests.category_;
                    R();
                }
                if (droppedRequests.getDroppedCount() != 0) {
                    j0(droppedRequests.getDroppedCount());
                }
                z(((GeneratedMessageV3) droppedRequests).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return f.f46891i;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(String str) {
                Objects.requireNonNull(str);
                this.f46810e = str;
                R();
                return this;
            }

            public b j0(long j10) {
                this.f46811f = j10;
                R();
                return this;
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
                this.f46810e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46810e = "";
                b0();
            }
        }

        /* synthetic */ DroppedRequests(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DroppedRequests getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return f.f46891i;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DroppedRequests parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DroppedRequests parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DroppedRequests> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DroppedRequests)) {
                return super.equals(obj);
            }
            DroppedRequests droppedRequests = (DroppedRequests) obj;
            return getCategory().equals(droppedRequests.getCategory()) && getDroppedCount() == droppedRequests.getDroppedCount() && this.unknownFields.equals(droppedRequests.unknownFields);
        }

        public String getCategory() {
            Object obj = this.category_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.category_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getCategoryBytes() {
            Object obj = this.category_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.category_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public long getDroppedCount() {
            return this.droppedCount_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DroppedRequests> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.category_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.category_);
            long j10 = this.droppedCount_;
            if (j10 != 0) {
                computeStringSize += CodedOutputStream.a0(2, j10);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCategory().hashCode()) * 37) + 2) * 53) + u0.i(getDroppedCount())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return f.f46892j.d(DroppedRequests.class, b.class);
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
            return new DroppedRequests();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.category_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.category_);
            }
            long j10 = this.droppedCount_;
            if (j10 != 0) {
                codedOutputStream.e1(2, j10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DroppedRequests(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DroppedRequests droppedRequests) {
            return DEFAULT_INSTANCE.toBuilder().g0(droppedRequests);
        }

        public static DroppedRequests parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DroppedRequests(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DroppedRequests parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DroppedRequests parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DroppedRequests getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static DroppedRequests parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DroppedRequests() {
            this.memoizedIsInitialized = (byte) -1;
            this.category_ = "";
        }

        public static DroppedRequests parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DroppedRequests parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static DroppedRequests parseFrom(InputStream inputStream) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DroppedRequests(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.category_ = pVar.K();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.droppedCount_ = pVar.N();
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
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static DroppedRequests parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DroppedRequests parseFrom(p pVar) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DroppedRequests parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DroppedRequests) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClusterStats> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClusterStats m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClusterStats(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.a {

        /* renamed from: e  reason: collision with root package name */
        private int f46812e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46813f;

        /* renamed from: g  reason: collision with root package name */
        private Object f46814g;

        /* renamed from: h  reason: collision with root package name */
        private List<UpstreamLocalityStats> f46815h;

        /* renamed from: i  reason: collision with root package name */
        private l2<UpstreamLocalityStats, UpstreamLocalityStats.b, i> f46816i;

        /* renamed from: j  reason: collision with root package name */
        private long f46817j;

        /* renamed from: k  reason: collision with root package name */
        private List<DroppedRequests> f46818k;

        /* renamed from: l  reason: collision with root package name */
        private l2<DroppedRequests, DroppedRequests.b, c> f46819l;

        /* renamed from: m  reason: collision with root package name */
        private Duration f46820m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f46821n;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void d0() {
            if ((this.f46812e & 2) == 0) {
                this.f46818k = new ArrayList(this.f46818k);
                this.f46812e |= 2;
            }
        }

        private void e0() {
            if ((this.f46812e & 1) == 0) {
                this.f46815h = new ArrayList(this.f46815h);
                this.f46812e |= 1;
            }
        }

        private l2<DroppedRequests, DroppedRequests.b, c> h0() {
            if (this.f46819l == null) {
                this.f46819l = new l2<>(this.f46818k, (this.f46812e & 2) != 0, H(), O());
                this.f46818k = null;
            }
            return this.f46819l;
        }

        private l2<UpstreamLocalityStats, UpstreamLocalityStats.b, i> i0() {
            if (this.f46816i == null) {
                this.f46816i = new l2<>(this.f46815h, (this.f46812e & 1) != 0, H(), O());
                this.f46815h = null;
            }
            return this.f46816i;
        }

        private void j0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                h0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f46890h.d(ClusterStats.class, b.class);
        }

        public b W(DroppedRequests.b bVar) {
            l2<DroppedRequests, DroppedRequests.b, c> l2Var = this.f46819l;
            if (l2Var == null) {
                d0();
                this.f46818k.add(bVar.build());
                R();
            } else {
                l2Var.d(bVar.build());
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        public b Y(UpstreamLocalityStats.b bVar) {
            l2<UpstreamLocalityStats, UpstreamLocalityStats.b, i> l2Var = this.f46816i;
            if (l2Var == null) {
                e0();
                this.f46815h.add(bVar.build());
                R();
            } else {
                l2Var.d(bVar.build());
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public ClusterStats build() {
            ClusterStats I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: a0 */
        public ClusterStats I() {
            ClusterStats clusterStats = new ClusterStats(this, (a) null);
            clusterStats.clusterName_ = this.f46813f;
            clusterStats.clusterServiceName_ = this.f46814g;
            l2<UpstreamLocalityStats, UpstreamLocalityStats.b, i> l2Var = this.f46816i;
            if (l2Var == null) {
                if ((this.f46812e & 1) != 0) {
                    this.f46815h = Collections.unmodifiableList(this.f46815h);
                    this.f46812e &= -2;
                }
                clusterStats.upstreamLocalityStats_ = this.f46815h;
            } else {
                clusterStats.upstreamLocalityStats_ = l2Var.e();
            }
            clusterStats.totalDroppedRequests_ = this.f46817j;
            l2<DroppedRequests, DroppedRequests.b, c> l2Var2 = this.f46819l;
            if (l2Var2 == null) {
                if ((this.f46812e & 2) != 0) {
                    this.f46818k = Collections.unmodifiableList(this.f46818k);
                    this.f46812e &= -3;
                }
                clusterStats.droppedRequests_ = this.f46818k;
            } else {
                clusterStats.droppedRequests_ = l2Var2.e();
            }
            q2<Duration, Duration.b, v> q2Var = this.f46821n;
            if (q2Var == null) {
                clusterStats.loadReportInterval_ = this.f46820m;
            } else {
                clusterStats.loadReportInterval_ = q2Var.b();
            }
            Q();
            return clusterStats;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: b0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public ClusterStats getDefaultInstanceForType() {
            return ClusterStats.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f46889g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.ClusterStats$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClusterStats) {
                return m0((ClusterStats) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b m0(ClusterStats clusterStats) {
            if (clusterStats == ClusterStats.getDefaultInstance()) {
                return this;
            }
            if (!clusterStats.getClusterName().isEmpty()) {
                this.f46813f = clusterStats.clusterName_;
                R();
            }
            if (!clusterStats.getClusterServiceName().isEmpty()) {
                this.f46814g = clusterStats.clusterServiceName_;
                R();
            }
            if (this.f46816i == null) {
                if (!clusterStats.upstreamLocalityStats_.isEmpty()) {
                    if (this.f46815h.isEmpty()) {
                        this.f46815h = clusterStats.upstreamLocalityStats_;
                        this.f46812e &= -2;
                    } else {
                        e0();
                        this.f46815h.addAll(clusterStats.upstreamLocalityStats_);
                    }
                    R();
                }
            } else if (!clusterStats.upstreamLocalityStats_.isEmpty()) {
                if (this.f46816i.k()) {
                    this.f46816i.f();
                    this.f46816i = null;
                    this.f46815h = clusterStats.upstreamLocalityStats_;
                    this.f46812e &= -2;
                    this.f46816i = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f46816i.b(clusterStats.upstreamLocalityStats_);
                }
            }
            if (clusterStats.getTotalDroppedRequests() != 0) {
                u0(clusterStats.getTotalDroppedRequests());
            }
            if (this.f46819l == null) {
                if (!clusterStats.droppedRequests_.isEmpty()) {
                    if (this.f46818k.isEmpty()) {
                        this.f46818k = clusterStats.droppedRequests_;
                        this.f46812e &= -3;
                    } else {
                        d0();
                        this.f46818k.addAll(clusterStats.droppedRequests_);
                    }
                    R();
                }
            } else if (!clusterStats.droppedRequests_.isEmpty()) {
                if (this.f46819l.k()) {
                    this.f46819l.f();
                    this.f46819l = null;
                    this.f46818k = clusterStats.droppedRequests_;
                    this.f46812e &= -3;
                    this.f46819l = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f46819l.b(clusterStats.droppedRequests_);
                }
            }
            if (clusterStats.hasLoadReportInterval()) {
                n0(clusterStats.getLoadReportInterval());
            }
            z(((GeneratedMessageV3) clusterStats).unknownFields);
            R();
            return this;
        }

        public b n0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f46821n;
            if (q2Var == null) {
                Duration duration2 = this.f46820m;
                if (duration2 != null) {
                    this.f46820m = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46820m = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b q0(String str) {
            Objects.requireNonNull(str);
            this.f46813f = str;
            R();
            return this;
        }

        public b r0(String str) {
            Objects.requireNonNull(str);
            this.f46814g = str;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b t0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f46821n;
            if (q2Var == null) {
                Objects.requireNonNull(duration);
                this.f46820m = duration;
                R();
            } else {
                q2Var.g(duration);
            }
            return this;
        }

        public b u0(long j10) {
            this.f46817j = j10;
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
            this.f46813f = "";
            this.f46814g = "";
            this.f46815h = Collections.emptyList();
            this.f46818k = Collections.emptyList();
            j0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46813f = "";
            this.f46814g = "";
            this.f46815h = Collections.emptyList();
            this.f46818k = Collections.emptyList();
            j0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ ClusterStats(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClusterStats getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f46889g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClusterStats parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClusterStats parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClusterStats> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClusterStats)) {
            return super.equals(obj);
        }
        ClusterStats clusterStats = (ClusterStats) obj;
        if (getClusterName().equals(clusterStats.getClusterName()) && getClusterServiceName().equals(clusterStats.getClusterServiceName()) && getUpstreamLocalityStatsList().equals(clusterStats.getUpstreamLocalityStatsList()) && getTotalDroppedRequests() == clusterStats.getTotalDroppedRequests() && getDroppedRequestsList().equals(clusterStats.getDroppedRequestsList()) && hasLoadReportInterval() == clusterStats.hasLoadReportInterval()) {
            return (!hasLoadReportInterval() || getLoadReportInterval().equals(clusterStats.getLoadReportInterval())) && this.unknownFields.equals(clusterStats.unknownFields);
        }
        return false;
    }

    public String getClusterName() {
        Object obj = this.clusterName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.clusterName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getClusterNameBytes() {
        Object obj = this.clusterName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clusterName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getClusterServiceName() {
        Object obj = this.clusterServiceName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.clusterServiceName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getClusterServiceNameBytes() {
        Object obj = this.clusterServiceName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.clusterServiceName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public DroppedRequests getDroppedRequests(int i9) {
        return this.droppedRequests_.get(i9);
    }

    public int getDroppedRequestsCount() {
        return this.droppedRequests_.size();
    }

    public List<DroppedRequests> getDroppedRequestsList() {
        return this.droppedRequests_;
    }

    public c getDroppedRequestsOrBuilder(int i9) {
        return this.droppedRequests_.get(i9);
    }

    public List<? extends c> getDroppedRequestsOrBuilderList() {
        return this.droppedRequests_;
    }

    public Duration getLoadReportInterval() {
        Duration duration = this.loadReportInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getLoadReportIntervalOrBuilder() {
        return getLoadReportInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClusterStats> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.clusterName_) ? GeneratedMessageV3.computeStringSize(1, this.clusterName_) + 0 : 0;
        for (int i10 = 0; i10 < this.upstreamLocalityStats_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.upstreamLocalityStats_.get(i10));
        }
        long j10 = this.totalDroppedRequests_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.a0(3, j10);
        }
        if (this.loadReportInterval_ != null) {
            computeStringSize += CodedOutputStream.G(4, getLoadReportInterval());
        }
        for (int i11 = 0; i11 < this.droppedRequests_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(5, this.droppedRequests_.get(i11));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.clusterServiceName_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.clusterServiceName_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public long getTotalDroppedRequests() {
        return this.totalDroppedRequests_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public UpstreamLocalityStats getUpstreamLocalityStats(int i9) {
        return this.upstreamLocalityStats_.get(i9);
    }

    public int getUpstreamLocalityStatsCount() {
        return this.upstreamLocalityStats_.size();
    }

    public List<UpstreamLocalityStats> getUpstreamLocalityStatsList() {
        return this.upstreamLocalityStats_;
    }

    public i getUpstreamLocalityStatsOrBuilder(int i9) {
        return this.upstreamLocalityStats_.get(i9);
    }

    public List<? extends i> getUpstreamLocalityStatsOrBuilderList() {
        return this.upstreamLocalityStats_;
    }

    public boolean hasLoadReportInterval() {
        return this.loadReportInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getClusterName().hashCode()) * 37) + 6) * 53) + getClusterServiceName().hashCode();
        if (getUpstreamLocalityStatsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getUpstreamLocalityStatsList().hashCode();
        }
        int i10 = (((hashCode * 37) + 3) * 53) + u0.i(getTotalDroppedRequests());
        if (getDroppedRequestsCount() > 0) {
            i10 = (((i10 * 37) + 5) * 53) + getDroppedRequestsList().hashCode();
        }
        if (hasLoadReportInterval()) {
            i10 = (((i10 * 37) + 4) * 53) + getLoadReportInterval().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f46890h.d(ClusterStats.class, b.class);
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
        return new ClusterStats();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.clusterName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.clusterName_);
        }
        for (int i9 = 0; i9 < this.upstreamLocalityStats_.size(); i9++) {
            codedOutputStream.L0(2, this.upstreamLocalityStats_.get(i9));
        }
        long j10 = this.totalDroppedRequests_;
        if (j10 != 0) {
            codedOutputStream.e1(3, j10);
        }
        if (this.loadReportInterval_ != null) {
            codedOutputStream.L0(4, getLoadReportInterval());
        }
        for (int i10 = 0; i10 < this.droppedRequests_.size(); i10++) {
            codedOutputStream.L0(5, this.droppedRequests_.get(i10));
        }
        if (!GeneratedMessageV3.isStringEmpty(this.clusterServiceName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.clusterServiceName_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClusterStats(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClusterStats clusterStats) {
        return DEFAULT_INSTANCE.toBuilder().m0(clusterStats);
    }

    public static ClusterStats parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClusterStats(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterStats parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterStats parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClusterStats getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).m0(this);
    }

    public static ClusterStats parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClusterStats() {
        this.memoizedIsInitialized = (byte) -1;
        this.clusterName_ = "";
        this.clusterServiceName_ = "";
        this.upstreamLocalityStats_ = Collections.emptyList();
        this.droppedRequests_ = Collections.emptyList();
    }

    public static ClusterStats parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClusterStats parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClusterStats parseFrom(InputStream inputStream) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static ClusterStats parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private ClusterStats(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.clusterName_ = pVar.K();
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.upstreamLocalityStats_ = new ArrayList();
                                z11 |= true;
                            }
                            this.upstreamLocalityStats_.add((UpstreamLocalityStats) pVar.B(UpstreamLocalityStats.parser(), f0Var));
                        } else if (L == 24) {
                            this.totalDroppedRequests_ = pVar.N();
                        } else if (L == 34) {
                            Duration duration = this.loadReportInterval_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.loadReportInterval_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.loadReportInterval_ = builder.I();
                            }
                        } else if (L == 42) {
                            if (!(z11 & true)) {
                                this.droppedRequests_ = new ArrayList();
                                z11 |= true;
                            }
                            this.droppedRequests_.add((DroppedRequests) pVar.B(DroppedRequests.parser(), f0Var));
                        } else if (L != 50) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.clusterServiceName_ = pVar.K();
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
                    this.upstreamLocalityStats_ = Collections.unmodifiableList(this.upstreamLocalityStats_);
                }
                if (z11 & true) {
                    this.droppedRequests_ = Collections.unmodifiableList(this.droppedRequests_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ClusterStats parseFrom(p pVar) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClusterStats parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClusterStats) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
