package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.BoolValue;
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
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TransportSocket;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.h1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Filter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChainMatch;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class FilterChain extends GeneratedMessageV3 implements d {
    public static final int FILTERS_FIELD_NUMBER = 3;
    public static final int FILTER_CHAIN_MATCH_FIELD_NUMBER = 1;
    public static final int METADATA_FIELD_NUMBER = 5;
    public static final int NAME_FIELD_NUMBER = 7;
    public static final int ON_DEMAND_CONFIGURATION_FIELD_NUMBER = 8;
    public static final int TRANSPORT_SOCKET_CONNECT_TIMEOUT_FIELD_NUMBER = 9;
    public static final int TRANSPORT_SOCKET_FIELD_NUMBER = 6;
    public static final int USE_PROXY_PROTO_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private FilterChainMatch filterChainMatch_;
    private List<Filter> filters_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private OnDemandConfiguration onDemandConfiguration_;
    private Duration transportSocketConnectTimeout_;
    private TransportSocket transportSocket_;
    private BoolValue useProxyProto_;
    private static final FilterChain DEFAULT_INSTANCE = new FilterChain();
    private static final e2<FilterChain> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class OnDemandConfiguration extends GeneratedMessageV3 implements c {
        private static final OnDemandConfiguration DEFAULT_INSTANCE = new OnDemandConfiguration();
        private static final e2<OnDemandConfiguration> PARSER = new a();
        public static final int REBUILD_TIMEOUT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private Duration rebuildTimeout_;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<OnDemandConfiguration> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public OnDemandConfiguration m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new OnDemandConfiguration(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Duration f48730e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f48731f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return f.f48844h.d(OnDemandConfiguration.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public OnDemandConfiguration build() {
                OnDemandConfiguration I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public OnDemandConfiguration I() {
                OnDemandConfiguration onDemandConfiguration = new OnDemandConfiguration(this, (a) null);
                q2<Duration, Duration.b, v> q2Var = this.f48731f;
                if (q2Var == null) {
                    onDemandConfiguration.rebuildTimeout_ = this.f48730e;
                } else {
                    onDemandConfiguration.rebuildTimeout_ = q2Var.b();
                }
                Q();
                return onDemandConfiguration;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public OnDemandConfiguration getDefaultInstanceForType() {
                return OnDemandConfiguration.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.OnDemandConfiguration.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.OnDemandConfiguration.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain$OnDemandConfiguration r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.OnDemandConfiguration) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain$OnDemandConfiguration r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.OnDemandConfiguration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.OnDemandConfiguration.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain$OnDemandConfiguration$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof OnDemandConfiguration) {
                    return g0((OnDemandConfiguration) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(OnDemandConfiguration onDemandConfiguration) {
                if (onDemandConfiguration == OnDemandConfiguration.getDefaultInstance()) {
                    return this;
                }
                if (onDemandConfiguration.hasRebuildTimeout()) {
                    h0(onDemandConfiguration.getRebuildTimeout());
                }
                z(((GeneratedMessageV3) onDemandConfiguration).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return f.f48843g;
            }

            public b h0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f48731f;
                if (q2Var == null) {
                    Duration duration2 = this.f48730e;
                    if (duration2 != null) {
                        this.f48730e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f48730e = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ OnDemandConfiguration(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static OnDemandConfiguration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return f.f48843g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static OnDemandConfiguration parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static OnDemandConfiguration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<OnDemandConfiguration> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OnDemandConfiguration)) {
                return super.equals(obj);
            }
            OnDemandConfiguration onDemandConfiguration = (OnDemandConfiguration) obj;
            if (hasRebuildTimeout() != onDemandConfiguration.hasRebuildTimeout()) {
                return false;
            }
            return (!hasRebuildTimeout() || getRebuildTimeout().equals(onDemandConfiguration.getRebuildTimeout())) && this.unknownFields.equals(onDemandConfiguration.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<OnDemandConfiguration> getParserForType() {
            return PARSER;
        }

        public Duration getRebuildTimeout() {
            Duration duration = this.rebuildTimeout_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getRebuildTimeoutOrBuilder() {
            return getRebuildTimeout();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.rebuildTimeout_ != null ? 0 + CodedOutputStream.G(1, getRebuildTimeout()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasRebuildTimeout() {
            return this.rebuildTimeout_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasRebuildTimeout()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getRebuildTimeout().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return f.f48844h.d(OnDemandConfiguration.class, b.class);
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
            return new OnDemandConfiguration();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.rebuildTimeout_ != null) {
                codedOutputStream.L0(1, getRebuildTimeout());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ OnDemandConfiguration(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(OnDemandConfiguration onDemandConfiguration) {
            return DEFAULT_INSTANCE.toBuilder().g0(onDemandConfiguration);
        }

        public static OnDemandConfiguration parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private OnDemandConfiguration(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OnDemandConfiguration parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static OnDemandConfiguration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public OnDemandConfiguration getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static OnDemandConfiguration parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private OnDemandConfiguration() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static OnDemandConfiguration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static OnDemandConfiguration parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private OnDemandConfiguration(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L != 10) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Duration duration = this.rebuildTimeout_;
                                    Duration.b builder = duration != null ? duration.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.rebuildTimeout_ = duration2;
                                    if (builder != null) {
                                        builder.e0(duration2);
                                        this.rebuildTimeout_ = builder.I();
                                    }
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

        public static OnDemandConfiguration parseFrom(InputStream inputStream) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static OnDemandConfiguration parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static OnDemandConfiguration parseFrom(p pVar) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static OnDemandConfiguration parseFrom(p pVar, f0 f0Var) throws IOException {
            return (OnDemandConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<FilterChain> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public FilterChain m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new FilterChain(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private int f48732e;

        /* renamed from: f  reason: collision with root package name */
        private FilterChainMatch f48733f;

        /* renamed from: g  reason: collision with root package name */
        private q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.c> f48734g;

        /* renamed from: h  reason: collision with root package name */
        private List<Filter> f48735h;

        /* renamed from: i  reason: collision with root package name */
        private l2<Filter, Filter.c, e> f48736i;

        /* renamed from: j  reason: collision with root package name */
        private BoolValue f48737j;

        /* renamed from: k  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48738k;

        /* renamed from: l  reason: collision with root package name */
        private Metadata f48739l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Metadata, Metadata.b, k0> f48740m;

        /* renamed from: n  reason: collision with root package name */
        private TransportSocket f48741n;

        /* renamed from: o  reason: collision with root package name */
        private q2<TransportSocket, TransportSocket.c, h1> f48742o;

        /* renamed from: p  reason: collision with root package name */
        private Duration f48743p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f48744q;

        /* renamed from: r  reason: collision with root package name */
        private Object f48745r;

        /* renamed from: s  reason: collision with root package name */
        private OnDemandConfiguration f48746s;

        /* renamed from: t  reason: collision with root package name */
        private q2<OnDemandConfiguration, OnDemandConfiguration.b, c> f48747t;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48732e & 1) == 0) {
                this.f48735h = new ArrayList(this.f48735h);
                this.f48732e |= 1;
            }
        }

        private l2<Filter, Filter.c, e> d0() {
            if (this.f48736i == null) {
                this.f48736i = new l2<>(this.f48735h, (this.f48732e & 1) != 0, H(), O());
                this.f48735h = null;
            }
            return this.f48736i;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f48842f.d(FilterChain.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public FilterChain build() {
            FilterChain I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public FilterChain I() {
            FilterChain filterChain = new FilterChain(this, (a) null);
            q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.c> q2Var = this.f48734g;
            if (q2Var == null) {
                filterChain.filterChainMatch_ = this.f48733f;
            } else {
                filterChain.filterChainMatch_ = q2Var.b();
            }
            l2<Filter, Filter.c, e> l2Var = this.f48736i;
            if (l2Var == null) {
                if ((this.f48732e & 1) != 0) {
                    this.f48735h = Collections.unmodifiableList(this.f48735h);
                    this.f48732e &= -2;
                }
                filterChain.filters_ = this.f48735h;
            } else {
                filterChain.filters_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f48738k;
            if (q2Var2 == null) {
                filterChain.useProxyProto_ = this.f48737j;
            } else {
                filterChain.useProxyProto_ = q2Var2.b();
            }
            q2<Metadata, Metadata.b, k0> q2Var3 = this.f48740m;
            if (q2Var3 == null) {
                filterChain.metadata_ = this.f48739l;
            } else {
                filterChain.metadata_ = q2Var3.b();
            }
            q2<TransportSocket, TransportSocket.c, h1> q2Var4 = this.f48742o;
            if (q2Var4 == null) {
                filterChain.transportSocket_ = this.f48741n;
            } else {
                filterChain.transportSocket_ = q2Var4.b();
            }
            q2<Duration, Duration.b, v> q2Var5 = this.f48744q;
            if (q2Var5 == null) {
                filterChain.transportSocketConnectTimeout_ = this.f48743p;
            } else {
                filterChain.transportSocketConnectTimeout_ = q2Var5.b();
            }
            filterChain.name_ = this.f48745r;
            q2<OnDemandConfiguration, OnDemandConfiguration.b, c> q2Var6 = this.f48747t;
            if (q2Var6 == null) {
                filterChain.onDemandConfiguration_ = this.f48746s;
            } else {
                filterChain.onDemandConfiguration_ = q2Var6.b();
            }
            Q();
            return filterChain;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public FilterChain getDefaultInstanceForType() {
            return FilterChain.getDefaultInstance();
        }

        public b g0(FilterChainMatch filterChainMatch) {
            q2<FilterChainMatch, FilterChainMatch.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.c> q2Var = this.f48734g;
            if (q2Var == null) {
                FilterChainMatch filterChainMatch2 = this.f48733f;
                if (filterChainMatch2 != null) {
                    this.f48733f = FilterChainMatch.newBuilder(filterChainMatch2).r0(filterChainMatch).I();
                } else {
                    this.f48733f = filterChainMatch;
                }
                R();
            } else {
                q2Var.e(filterChainMatch);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f48841e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof FilterChain) {
                return j0((FilterChain) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(FilterChain filterChain) {
            if (filterChain == FilterChain.getDefaultInstance()) {
                return this;
            }
            if (filterChain.hasFilterChainMatch()) {
                g0(filterChain.getFilterChainMatch());
            }
            if (this.f48736i == null) {
                if (!filterChain.filters_.isEmpty()) {
                    if (this.f48735h.isEmpty()) {
                        this.f48735h = filterChain.filters_;
                        this.f48732e &= -2;
                    } else {
                        a0();
                        this.f48735h.addAll(filterChain.filters_);
                    }
                    R();
                }
            } else if (!filterChain.filters_.isEmpty()) {
                if (this.f48736i.k()) {
                    this.f48736i.f();
                    this.f48736i = null;
                    this.f48735h = filterChain.filters_;
                    this.f48732e &= -2;
                    this.f48736i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48736i.b(filterChain.filters_);
                }
            }
            if (filterChain.hasUseProxyProto()) {
                q0(filterChain.getUseProxyProto());
            }
            if (filterChain.hasMetadata()) {
                k0(filterChain.getMetadata());
            }
            if (filterChain.hasTransportSocket()) {
                m0(filterChain.getTransportSocket());
            }
            if (filterChain.hasTransportSocketConnectTimeout()) {
                n0(filterChain.getTransportSocketConnectTimeout());
            }
            if (!filterChain.getName().isEmpty()) {
                this.f48745r = filterChain.name_;
                R();
            }
            if (filterChain.hasOnDemandConfiguration()) {
                l0(filterChain.getOnDemandConfiguration());
            }
            z(((GeneratedMessageV3) filterChain).unknownFields);
            R();
            return this;
        }

        public b k0(Metadata metadata) {
            q2<Metadata, Metadata.b, k0> q2Var = this.f48740m;
            if (q2Var == null) {
                Metadata metadata2 = this.f48739l;
                if (metadata2 != null) {
                    this.f48739l = Metadata.newBuilder(metadata2).k0(metadata).I();
                } else {
                    this.f48739l = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public b l0(OnDemandConfiguration onDemandConfiguration) {
            q2<OnDemandConfiguration, OnDemandConfiguration.b, c> q2Var = this.f48747t;
            if (q2Var == null) {
                OnDemandConfiguration onDemandConfiguration2 = this.f48746s;
                if (onDemandConfiguration2 != null) {
                    this.f48746s = OnDemandConfiguration.newBuilder(onDemandConfiguration2).g0(onDemandConfiguration).I();
                } else {
                    this.f48746s = onDemandConfiguration;
                }
                R();
            } else {
                q2Var.e(onDemandConfiguration);
            }
            return this;
        }

        public b m0(TransportSocket transportSocket) {
            q2<TransportSocket, TransportSocket.c, h1> q2Var = this.f48742o;
            if (q2Var == null) {
                TransportSocket transportSocket2 = this.f48741n;
                if (transportSocket2 != null) {
                    this.f48741n = TransportSocket.newBuilder(transportSocket2).g0(transportSocket).I();
                } else {
                    this.f48741n = transportSocket;
                }
                R();
            } else {
                q2Var.e(transportSocket);
            }
            return this;
        }

        public b n0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f48744q;
            if (q2Var == null) {
                Duration duration2 = this.f48743p;
                if (duration2 != null) {
                    this.f48743p = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48743p = duration;
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

        @Deprecated
        public b q0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48738k;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48737j;
                if (boolValue2 != null) {
                    this.f48737j = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48737j = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
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
            this.f48735h = Collections.emptyList();
            this.f48745r = "";
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48735h = Collections.emptyList();
            this.f48745r = "";
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ FilterChain(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static FilterChain getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f48841e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static FilterChain parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static FilterChain parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<FilterChain> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FilterChain)) {
            return super.equals(obj);
        }
        FilterChain filterChain = (FilterChain) obj;
        if (hasFilterChainMatch() != filterChain.hasFilterChainMatch()) {
            return false;
        }
        if ((!hasFilterChainMatch() || getFilterChainMatch().equals(filterChain.getFilterChainMatch())) && getFiltersList().equals(filterChain.getFiltersList()) && hasUseProxyProto() == filterChain.hasUseProxyProto()) {
            if ((!hasUseProxyProto() || getUseProxyProto().equals(filterChain.getUseProxyProto())) && hasMetadata() == filterChain.hasMetadata()) {
                if ((!hasMetadata() || getMetadata().equals(filterChain.getMetadata())) && hasTransportSocket() == filterChain.hasTransportSocket()) {
                    if ((!hasTransportSocket() || getTransportSocket().equals(filterChain.getTransportSocket())) && hasTransportSocketConnectTimeout() == filterChain.hasTransportSocketConnectTimeout()) {
                        if ((!hasTransportSocketConnectTimeout() || getTransportSocketConnectTimeout().equals(filterChain.getTransportSocketConnectTimeout())) && getName().equals(filterChain.getName()) && hasOnDemandConfiguration() == filterChain.hasOnDemandConfiguration()) {
                            return (!hasOnDemandConfiguration() || getOnDemandConfiguration().equals(filterChain.getOnDemandConfiguration())) && this.unknownFields.equals(filterChain.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public FilterChainMatch getFilterChainMatch() {
        FilterChainMatch filterChainMatch = this.filterChainMatch_;
        return filterChainMatch == null ? FilterChainMatch.getDefaultInstance() : filterChainMatch;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.c getFilterChainMatchOrBuilder() {
        return getFilterChainMatch();
    }

    public Filter getFilters(int i9) {
        return this.filters_.get(i9);
    }

    public int getFiltersCount() {
        return this.filters_.size();
    }

    public List<Filter> getFiltersList() {
        return this.filters_;
    }

    public e getFiltersOrBuilder(int i9) {
        return this.filters_.get(i9);
    }

    public List<? extends e> getFiltersOrBuilderList() {
        return this.filters_;
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public k0 getMetadataOrBuilder() {
        return getMetadata();
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

    public OnDemandConfiguration getOnDemandConfiguration() {
        OnDemandConfiguration onDemandConfiguration = this.onDemandConfiguration_;
        return onDemandConfiguration == null ? OnDemandConfiguration.getDefaultInstance() : onDemandConfiguration;
    }

    public c getOnDemandConfigurationOrBuilder() {
        return getOnDemandConfiguration();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<FilterChain> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.filterChainMatch_ != null ? CodedOutputStream.G(1, getFilterChainMatch()) + 0 : 0;
        for (int i10 = 0; i10 < this.filters_.size(); i10++) {
            G += CodedOutputStream.G(3, this.filters_.get(i10));
        }
        if (this.useProxyProto_ != null) {
            G += CodedOutputStream.G(4, getUseProxyProto());
        }
        if (this.metadata_ != null) {
            G += CodedOutputStream.G(5, getMetadata());
        }
        if (this.transportSocket_ != null) {
            G += CodedOutputStream.G(6, getTransportSocket());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            G += GeneratedMessageV3.computeStringSize(7, this.name_);
        }
        if (this.onDemandConfiguration_ != null) {
            G += CodedOutputStream.G(8, getOnDemandConfiguration());
        }
        if (this.transportSocketConnectTimeout_ != null) {
            G += CodedOutputStream.G(9, getTransportSocketConnectTimeout());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public TransportSocket getTransportSocket() {
        TransportSocket transportSocket = this.transportSocket_;
        return transportSocket == null ? TransportSocket.getDefaultInstance() : transportSocket;
    }

    public Duration getTransportSocketConnectTimeout() {
        Duration duration = this.transportSocketConnectTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getTransportSocketConnectTimeoutOrBuilder() {
        return getTransportSocketConnectTimeout();
    }

    public h1 getTransportSocketOrBuilder() {
        return getTransportSocket();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public BoolValue getUseProxyProto() {
        BoolValue boolValue = this.useProxyProto_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    @Deprecated
    public com.google.protobuf.l getUseProxyProtoOrBuilder() {
        return getUseProxyProto();
    }

    public boolean hasFilterChainMatch() {
        return this.filterChainMatch_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasOnDemandConfiguration() {
        return this.onDemandConfiguration_ != null;
    }

    public boolean hasTransportSocket() {
        return this.transportSocket_ != null;
    }

    public boolean hasTransportSocketConnectTimeout() {
        return this.transportSocketConnectTimeout_ != null;
    }

    @Deprecated
    public boolean hasUseProxyProto() {
        return this.useProxyProto_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasFilterChainMatch()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getFilterChainMatch().hashCode();
        }
        if (getFiltersCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getFiltersList().hashCode();
        }
        if (hasUseProxyProto()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getUseProxyProto().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getMetadata().hashCode();
        }
        if (hasTransportSocket()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getTransportSocket().hashCode();
        }
        if (hasTransportSocketConnectTimeout()) {
            hashCode = (((hashCode * 37) + 9) * 53) + getTransportSocketConnectTimeout().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 7) * 53) + getName().hashCode();
        if (hasOnDemandConfiguration()) {
            hashCode2 = (((hashCode2 * 37) + 8) * 53) + getOnDemandConfiguration().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f48842f.d(FilterChain.class, b.class);
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
        return new FilterChain();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.filterChainMatch_ != null) {
            codedOutputStream.L0(1, getFilterChainMatch());
        }
        for (int i9 = 0; i9 < this.filters_.size(); i9++) {
            codedOutputStream.L0(3, this.filters_.get(i9));
        }
        if (this.useProxyProto_ != null) {
            codedOutputStream.L0(4, getUseProxyProto());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(5, getMetadata());
        }
        if (this.transportSocket_ != null) {
            codedOutputStream.L0(6, getTransportSocket());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.name_);
        }
        if (this.onDemandConfiguration_ != null) {
            codedOutputStream.L0(8, getOnDemandConfiguration());
        }
        if (this.transportSocketConnectTimeout_ != null) {
            codedOutputStream.L0(9, getTransportSocketConnectTimeout());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ FilterChain(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(FilterChain filterChain) {
        return DEFAULT_INSTANCE.toBuilder().j0(filterChain);
    }

    public static FilterChain parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private FilterChain(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static FilterChain parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChain parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public FilterChain getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static FilterChain parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private FilterChain() {
        this.memoizedIsInitialized = (byte) -1;
        this.filters_ = Collections.emptyList();
        this.name_ = "";
    }

    public static FilterChain parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static FilterChain parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static FilterChain parseFrom(InputStream inputStream) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private FilterChain(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            FilterChainMatch filterChainMatch = this.filterChainMatch_;
                            FilterChainMatch.b builder = filterChainMatch != null ? filterChainMatch.toBuilder() : null;
                            FilterChainMatch filterChainMatch2 = (FilterChainMatch) pVar.B(FilterChainMatch.parser(), f0Var);
                            this.filterChainMatch_ = filterChainMatch2;
                            if (builder != null) {
                                builder.r0(filterChainMatch2);
                                this.filterChainMatch_ = builder.I();
                            }
                        } else if (L == 26) {
                            if (!(z11 & true)) {
                                this.filters_ = new ArrayList();
                                z11 |= true;
                            }
                            this.filters_.add((Filter) pVar.B(Filter.parser(), f0Var));
                        } else if (L == 34) {
                            BoolValue boolValue = this.useProxyProto_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.useProxyProto_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.useProxyProto_ = builder2.I();
                            }
                        } else if (L == 42) {
                            Metadata metadata = this.metadata_;
                            Metadata.b builder3 = metadata != null ? metadata.toBuilder() : null;
                            Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                            this.metadata_ = metadata2;
                            if (builder3 != null) {
                                builder3.k0(metadata2);
                                this.metadata_ = builder3.I();
                            }
                        } else if (L == 50) {
                            TransportSocket transportSocket = this.transportSocket_;
                            TransportSocket.c builder4 = transportSocket != null ? transportSocket.toBuilder() : null;
                            TransportSocket transportSocket2 = (TransportSocket) pVar.B(TransportSocket.parser(), f0Var);
                            this.transportSocket_ = transportSocket2;
                            if (builder4 != null) {
                                builder4.g0(transportSocket2);
                                this.transportSocket_ = builder4.I();
                            }
                        } else if (L == 58) {
                            this.name_ = pVar.K();
                        } else if (L == 66) {
                            OnDemandConfiguration onDemandConfiguration = this.onDemandConfiguration_;
                            OnDemandConfiguration.b builder5 = onDemandConfiguration != null ? onDemandConfiguration.toBuilder() : null;
                            OnDemandConfiguration onDemandConfiguration2 = (OnDemandConfiguration) pVar.B(OnDemandConfiguration.parser(), f0Var);
                            this.onDemandConfiguration_ = onDemandConfiguration2;
                            if (builder5 != null) {
                                builder5.g0(onDemandConfiguration2);
                                this.onDemandConfiguration_ = builder5.I();
                            }
                        } else if (L != 74) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Duration duration = this.transportSocketConnectTimeout_;
                            Duration.b builder6 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.transportSocketConnectTimeout_ = duration2;
                            if (builder6 != null) {
                                builder6.e0(duration2);
                                this.transportSocketConnectTimeout_ = builder6.I();
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
                if (z11 & true) {
                    this.filters_ = Collections.unmodifiableList(this.filters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static FilterChain parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static FilterChain parseFrom(p pVar) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static FilterChain parseFrom(p pVar, f0 f0Var) throws IOException {
        return (FilterChain) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
