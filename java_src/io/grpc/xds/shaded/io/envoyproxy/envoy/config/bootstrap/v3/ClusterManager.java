package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

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
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiConfigSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.BindConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.EventServiceConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.r;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ClusterManager extends GeneratedMessageV3 implements d {
    public static final int LOAD_STATS_CONFIG_FIELD_NUMBER = 4;
    public static final int LOCAL_CLUSTER_NAME_FIELD_NUMBER = 1;
    public static final int OUTLIER_DETECTION_FIELD_NUMBER = 2;
    public static final int UPSTREAM_BIND_CONFIG_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private ApiConfigSource loadStatsConfig_;
    private volatile Object localClusterName_;
    private byte memoizedIsInitialized;
    private OutlierDetection outlierDetection_;
    private BindConfig upstreamBindConfig_;
    private static final ClusterManager DEFAULT_INSTANCE = new ClusterManager();
    private static final e2<ClusterManager> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class OutlierDetection extends GeneratedMessageV3 implements c {
        public static final int EVENT_LOG_PATH_FIELD_NUMBER = 1;
        public static final int EVENT_SERVICE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private volatile Object eventLogPath_;
        private EventServiceConfig eventService_;
        private byte memoizedIsInitialized;
        private static final OutlierDetection DEFAULT_INSTANCE = new OutlierDetection();
        private static final e2<OutlierDetection> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<OutlierDetection> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OutlierDetection m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OutlierDetection(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f47466e;

            /* renamed from: f  reason: collision with root package name */
            private EventServiceConfig f47467f;

            /* renamed from: g  reason: collision with root package name */
            private q2<EventServiceConfig, EventServiceConfig.c, r> f47468g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47537n.d(OutlierDetection.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public OutlierDetection build() {
                OutlierDetection I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public OutlierDetection I() {
                OutlierDetection outlierDetection = new OutlierDetection(this, (a) null);
                outlierDetection.eventLogPath_ = this.f47466e;
                q2<EventServiceConfig, EventServiceConfig.c, r> q2Var = this.f47468g;
                if (q2Var == null) {
                    outlierDetection.eventService_ = this.f47467f;
                } else {
                    outlierDetection.eventService_ = q2Var.b();
                }
                Q();
                return outlierDetection;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public OutlierDetection getDefaultInstanceForType() {
                return OutlierDetection.getDefaultInstance();
            }

            public b d0(EventServiceConfig eventServiceConfig) {
                q2<EventServiceConfig, EventServiceConfig.c, r> q2Var = this.f47468g;
                if (q2Var == null) {
                    EventServiceConfig eventServiceConfig2 = this.f47467f;
                    if (eventServiceConfig2 != null) {
                        this.f47467f = EventServiceConfig.newBuilder(eventServiceConfig2).g0(eventServiceConfig).I();
                    } else {
                        this.f47467f = eventServiceConfig;
                    }
                    R();
                } else {
                    q2Var.e(eventServiceConfig);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager$OutlierDetection r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager$OutlierDetection r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.OutlierDetection.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager$OutlierDetection$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof OutlierDetection) {
                    return h0((OutlierDetection) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47536m;
            }

            public b h0(OutlierDetection outlierDetection) {
                if (outlierDetection == OutlierDetection.getDefaultInstance()) {
                    return this;
                }
                if (!outlierDetection.getEventLogPath().isEmpty()) {
                    this.f47466e = outlierDetection.eventLogPath_;
                    R();
                }
                if (outlierDetection.hasEventService()) {
                    d0(outlierDetection.getEventService());
                }
                z(((GeneratedMessageV3) outlierDetection).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f47466e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47466e = "";
                b0();
            }
        }

        /* synthetic */ OutlierDetection(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OutlierDetection getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47536m;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static OutlierDetection parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static OutlierDetection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<OutlierDetection> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OutlierDetection)) {
                return super.equals(obj);
            }
            OutlierDetection outlierDetection = (OutlierDetection) obj;
            if (getEventLogPath().equals(outlierDetection.getEventLogPath()) && hasEventService() == outlierDetection.hasEventService()) {
                return (!hasEventService() || getEventService().equals(outlierDetection.getEventService())) && this.unknownFields.equals(outlierDetection.unknownFields);
            }
            return false;
        }

        public String getEventLogPath() {
            Object obj = this.eventLogPath_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.eventLogPath_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getEventLogPathBytes() {
            Object obj = this.eventLogPath_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.eventLogPath_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public EventServiceConfig getEventService() {
            EventServiceConfig eventServiceConfig = this.eventService_;
            return eventServiceConfig == null ? EventServiceConfig.getDefaultInstance() : eventServiceConfig;
        }

        public r getEventServiceOrBuilder() {
            return getEventService();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<OutlierDetection> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.eventLogPath_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.eventLogPath_);
            if (this.eventService_ != null) {
                computeStringSize += CodedOutputStream.G(2, getEventService());
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasEventService() {
            return this.eventService_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getEventLogPath().hashCode();
            if (hasEventService()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getEventService().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47537n.d(OutlierDetection.class, b.class);
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
            return new OutlierDetection();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.eventLogPath_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.eventLogPath_);
            }
            if (this.eventService_ != null) {
                codedOutputStream.L0(2, getEventService());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ OutlierDetection(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(OutlierDetection outlierDetection) {
            return DEFAULT_INSTANCE.toBuilder().h0(outlierDetection);
        }

        public static OutlierDetection parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private OutlierDetection(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OutlierDetection parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static OutlierDetection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public OutlierDetection getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static OutlierDetection parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private OutlierDetection() {
            this.memoizedIsInitialized = (byte) -1;
            this.eventLogPath_ = "";
        }

        public static OutlierDetection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static OutlierDetection parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static OutlierDetection parseFrom(InputStream inputStream) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private OutlierDetection(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.eventLogPath_ = pVar.K();
                            } else if (L != 18) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                EventServiceConfig eventServiceConfig = this.eventService_;
                                EventServiceConfig.c builder = eventServiceConfig != null ? eventServiceConfig.toBuilder() : null;
                                EventServiceConfig eventServiceConfig2 = (EventServiceConfig) pVar.B(EventServiceConfig.parser(), f0Var);
                                this.eventService_ = eventServiceConfig2;
                                if (builder != null) {
                                    builder.g0(eventServiceConfig2);
                                    this.eventService_ = builder.I();
                                }
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

        public static OutlierDetection parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static OutlierDetection parseFrom(p pVar) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OutlierDetection parseFrom(p pVar, f0 f0Var) throws IOException {
            return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ClusterManager> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ClusterManager m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ClusterManager(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private Object f47469e;

        /* renamed from: f  reason: collision with root package name */
        private OutlierDetection f47470f;

        /* renamed from: g  reason: collision with root package name */
        private q2<OutlierDetection, OutlierDetection.b, c> f47471g;

        /* renamed from: h  reason: collision with root package name */
        private BindConfig f47472h;

        /* renamed from: i  reason: collision with root package name */
        private q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> f47473i;

        /* renamed from: j  reason: collision with root package name */
        private ApiConfigSource f47474j;

        /* renamed from: k  reason: collision with root package name */
        private q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> f47475k;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47535l.d(ClusterManager.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ClusterManager build() {
            ClusterManager I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ClusterManager I() {
            ClusterManager clusterManager = new ClusterManager(this, (a) null);
            clusterManager.localClusterName_ = this.f47469e;
            q2<OutlierDetection, OutlierDetection.b, c> q2Var = this.f47471g;
            if (q2Var == null) {
                clusterManager.outlierDetection_ = this.f47470f;
            } else {
                clusterManager.outlierDetection_ = q2Var.b();
            }
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> q2Var2 = this.f47473i;
            if (q2Var2 == null) {
                clusterManager.upstreamBindConfig_ = this.f47472h;
            } else {
                clusterManager.upstreamBindConfig_ = q2Var2.b();
            }
            q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var3 = this.f47475k;
            if (q2Var3 == null) {
                clusterManager.loadStatsConfig_ = this.f47474j;
            } else {
                clusterManager.loadStatsConfig_ = q2Var3.b();
            }
            Q();
            return clusterManager;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public ClusterManager getDefaultInstanceForType() {
            return ClusterManager.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.ClusterManager$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ClusterManager) {
                return g0((ClusterManager) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(ClusterManager clusterManager) {
            if (clusterManager == ClusterManager.getDefaultInstance()) {
                return this;
            }
            if (!clusterManager.getLocalClusterName().isEmpty()) {
                this.f47469e = clusterManager.localClusterName_;
                R();
            }
            if (clusterManager.hasOutlierDetection()) {
                i0(clusterManager.getOutlierDetection());
            }
            if (clusterManager.hasUpstreamBindConfig()) {
                k0(clusterManager.getUpstreamBindConfig());
            }
            if (clusterManager.hasLoadStatsConfig()) {
                h0(clusterManager.getLoadStatsConfig());
            }
            z(((GeneratedMessageV3) clusterManager).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47534k;
        }

        public b h0(ApiConfigSource apiConfigSource) {
            q2<ApiConfigSource, ApiConfigSource.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d> q2Var = this.f47475k;
            if (q2Var == null) {
                ApiConfigSource apiConfigSource2 = this.f47474j;
                if (apiConfigSource2 != null) {
                    this.f47474j = ApiConfigSource.newBuilder(apiConfigSource2).j0(apiConfigSource).I();
                } else {
                    this.f47474j = apiConfigSource;
                }
                R();
            } else {
                q2Var.e(apiConfigSource);
            }
            return this;
        }

        public b i0(OutlierDetection outlierDetection) {
            q2<OutlierDetection, OutlierDetection.b, c> q2Var = this.f47471g;
            if (q2Var == null) {
                OutlierDetection outlierDetection2 = this.f47470f;
                if (outlierDetection2 != null) {
                    this.f47470f = OutlierDetection.newBuilder(outlierDetection2).h0(outlierDetection).I();
                } else {
                    this.f47470f = outlierDetection;
                }
                R();
            } else {
                q2Var.e(outlierDetection);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(BindConfig bindConfig) {
            q2<BindConfig, BindConfig.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h> q2Var = this.f47473i;
            if (q2Var == null) {
                BindConfig bindConfig2 = this.f47472h;
                if (bindConfig2 != null) {
                    this.f47472h = BindConfig.newBuilder(bindConfig2).j0(bindConfig).I();
                } else {
                    this.f47472h = bindConfig;
                }
                R();
            } else {
                q2Var.e(bindConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f47469e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47469e = "";
            b0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ ClusterManager(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ClusterManager getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47534k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ClusterManager parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ClusterManager parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ClusterManager> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClusterManager)) {
            return super.equals(obj);
        }
        ClusterManager clusterManager = (ClusterManager) obj;
        if (getLocalClusterName().equals(clusterManager.getLocalClusterName()) && hasOutlierDetection() == clusterManager.hasOutlierDetection()) {
            if ((!hasOutlierDetection() || getOutlierDetection().equals(clusterManager.getOutlierDetection())) && hasUpstreamBindConfig() == clusterManager.hasUpstreamBindConfig()) {
                if ((!hasUpstreamBindConfig() || getUpstreamBindConfig().equals(clusterManager.getUpstreamBindConfig())) && hasLoadStatsConfig() == clusterManager.hasLoadStatsConfig()) {
                    return (!hasLoadStatsConfig() || getLoadStatsConfig().equals(clusterManager.getLoadStatsConfig())) && this.unknownFields.equals(clusterManager.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public ApiConfigSource getLoadStatsConfig() {
        ApiConfigSource apiConfigSource = this.loadStatsConfig_;
        return apiConfigSource == null ? ApiConfigSource.getDefaultInstance() : apiConfigSource;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d getLoadStatsConfigOrBuilder() {
        return getLoadStatsConfig();
    }

    public String getLocalClusterName() {
        Object obj = this.localClusterName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.localClusterName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLocalClusterNameBytes() {
        Object obj = this.localClusterName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.localClusterName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public OutlierDetection getOutlierDetection() {
        OutlierDetection outlierDetection = this.outlierDetection_;
        return outlierDetection == null ? OutlierDetection.getDefaultInstance() : outlierDetection;
    }

    public c getOutlierDetectionOrBuilder() {
        return getOutlierDetection();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ClusterManager> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.localClusterName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.localClusterName_);
        if (this.outlierDetection_ != null) {
            computeStringSize += CodedOutputStream.G(2, getOutlierDetection());
        }
        if (this.upstreamBindConfig_ != null) {
            computeStringSize += CodedOutputStream.G(3, getUpstreamBindConfig());
        }
        if (this.loadStatsConfig_ != null) {
            computeStringSize += CodedOutputStream.G(4, getLoadStatsConfig());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BindConfig getUpstreamBindConfig() {
        BindConfig bindConfig = this.upstreamBindConfig_;
        return bindConfig == null ? BindConfig.getDefaultInstance() : bindConfig;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h getUpstreamBindConfigOrBuilder() {
        return getUpstreamBindConfig();
    }

    public boolean hasLoadStatsConfig() {
        return this.loadStatsConfig_ != null;
    }

    public boolean hasOutlierDetection() {
        return this.outlierDetection_ != null;
    }

    public boolean hasUpstreamBindConfig() {
        return this.upstreamBindConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getLocalClusterName().hashCode();
        if (hasOutlierDetection()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getOutlierDetection().hashCode();
        }
        if (hasUpstreamBindConfig()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getUpstreamBindConfig().hashCode();
        }
        if (hasLoadStatsConfig()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getLoadStatsConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47535l.d(ClusterManager.class, b.class);
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
        return new ClusterManager();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.localClusterName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.localClusterName_);
        }
        if (this.outlierDetection_ != null) {
            codedOutputStream.L0(2, getOutlierDetection());
        }
        if (this.upstreamBindConfig_ != null) {
            codedOutputStream.L0(3, getUpstreamBindConfig());
        }
        if (this.loadStatsConfig_ != null) {
            codedOutputStream.L0(4, getLoadStatsConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ClusterManager(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ClusterManager clusterManager) {
        return DEFAULT_INSTANCE.toBuilder().g0(clusterManager);
    }

    public static ClusterManager parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ClusterManager(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ClusterManager parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterManager parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ClusterManager getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static ClusterManager parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ClusterManager() {
        this.memoizedIsInitialized = (byte) -1;
        this.localClusterName_ = "";
    }

    public static ClusterManager parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ClusterManager parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ClusterManager parseFrom(InputStream inputStream) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ClusterManager(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L != 10) {
                            if (L == 18) {
                                OutlierDetection outlierDetection = this.outlierDetection_;
                                OutlierDetection.b builder = outlierDetection != null ? outlierDetection.toBuilder() : null;
                                OutlierDetection outlierDetection2 = (OutlierDetection) pVar.B(OutlierDetection.parser(), f0Var);
                                this.outlierDetection_ = outlierDetection2;
                                if (builder != null) {
                                    builder.h0(outlierDetection2);
                                    this.outlierDetection_ = builder.I();
                                }
                            } else if (L == 26) {
                                BindConfig bindConfig = this.upstreamBindConfig_;
                                BindConfig.b builder2 = bindConfig != null ? bindConfig.toBuilder() : null;
                                BindConfig bindConfig2 = (BindConfig) pVar.B(BindConfig.parser(), f0Var);
                                this.upstreamBindConfig_ = bindConfig2;
                                if (builder2 != null) {
                                    builder2.j0(bindConfig2);
                                    this.upstreamBindConfig_ = builder2.I();
                                }
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ApiConfigSource apiConfigSource = this.loadStatsConfig_;
                                ApiConfigSource.b builder3 = apiConfigSource != null ? apiConfigSource.toBuilder() : null;
                                ApiConfigSource apiConfigSource2 = (ApiConfigSource) pVar.B(ApiConfigSource.parser(), f0Var);
                                this.loadStatsConfig_ = apiConfigSource2;
                                if (builder3 != null) {
                                    builder3.j0(apiConfigSource2);
                                    this.loadStatsConfig_ = builder3.I();
                                }
                            }
                        } else {
                            this.localClusterName_ = pVar.K();
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

    public static ClusterManager parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ClusterManager parseFrom(p pVar) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ClusterManager parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ClusterManager) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
