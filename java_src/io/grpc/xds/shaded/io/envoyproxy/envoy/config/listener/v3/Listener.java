package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.AccessLog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SocketOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TrafficDirection;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.c1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ApiListener;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.FilterChain;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.ListenerFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Listener extends GeneratedMessageV3 implements i {
    public static final int ACCESS_LOG_FIELD_NUMBER = 22;
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int API_LISTENER_FIELD_NUMBER = 19;
    public static final int BIND_TO_PORT_FIELD_NUMBER = 26;
    public static final int CONNECTION_BALANCE_CONFIG_FIELD_NUMBER = 20;
    public static final int CONTINUE_ON_LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER = 17;
    public static final int DEFAULT_FILTER_CHAIN_FIELD_NUMBER = 25;
    public static final int DEPRECATED_V1_FIELD_NUMBER = 7;
    public static final int DRAIN_TYPE_FIELD_NUMBER = 8;
    public static final int ENABLE_REUSE_PORT_FIELD_NUMBER = 29;
    public static final int FILTER_CHAINS_FIELD_NUMBER = 3;
    public static final int FREEBIND_FIELD_NUMBER = 11;
    public static final int INTERNAL_LISTENER_FIELD_NUMBER = 27;
    public static final int LISTENER_FILTERS_FIELD_NUMBER = 9;
    public static final int LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER = 15;
    public static final int METADATA_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 5;
    public static final int REUSE_PORT_FIELD_NUMBER = 21;
    public static final int SOCKET_OPTIONS_FIELD_NUMBER = 13;
    public static final int STAT_PREFIX_FIELD_NUMBER = 28;
    public static final int TCP_BACKLOG_SIZE_FIELD_NUMBER = 24;
    public static final int TCP_FAST_OPEN_QUEUE_LENGTH_FIELD_NUMBER = 12;
    public static final int TRAFFIC_DIRECTION_FIELD_NUMBER = 16;
    public static final int TRANSPARENT_FIELD_NUMBER = 10;
    public static final int UDP_LISTENER_CONFIG_FIELD_NUMBER = 18;
    public static final int USE_ORIGINAL_DST_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<AccessLog> accessLog_;
    private Address address_;
    private ApiListener apiListener_;
    private BoolValue bindToPort_;
    private ConnectionBalanceConfig connectionBalanceConfig_;
    private boolean continueOnListenerFiltersTimeout_;
    private FilterChain defaultFilterChain_;
    private DeprecatedV1 deprecatedV1_;
    private int drainType_;
    private BoolValue enableReusePort_;
    private List<FilterChain> filterChains_;
    private BoolValue freebind_;
    private Duration listenerFiltersTimeout_;
    private List<ListenerFilter> listenerFilters_;
    private int listenerSpecifierCase_;
    private Object listenerSpecifier_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private UInt32Value perConnectionBufferLimitBytes_;
    private boolean reusePort_;
    private List<SocketOption> socketOptions_;
    private volatile Object statPrefix_;
    private UInt32Value tcpBacklogSize_;
    private UInt32Value tcpFastOpenQueueLength_;
    private int trafficDirection_;
    private BoolValue transparent_;
    private UdpListenerConfig udpListenerConfig_;
    private BoolValue useOriginalDst_;
    private static final Listener DEFAULT_INSTANCE = new Listener();
    private static final e2<Listener> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class ConnectionBalanceConfig extends GeneratedMessageV3 implements d {
        public static final int EXACT_BALANCE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int balanceTypeCase_;
        private Object balanceType_;
        private byte memoizedIsInitialized;
        private static final ConnectionBalanceConfig DEFAULT_INSTANCE = new ConnectionBalanceConfig();
        private static final e2<ConnectionBalanceConfig> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum BalanceTypeCase implements u0.c {
            EXACT_BALANCE(1),
            BALANCETYPE_NOT_SET(0);
            
            private final int value;

            BalanceTypeCase(int i9) {
                this.value = i9;
            }

            public static BalanceTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return EXACT_BALANCE;
                }
                return BALANCETYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static BalanceTypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        public static final class ExactBalance extends GeneratedMessageV3 implements c {
            private static final ExactBalance DEFAULT_INSTANCE = new ExactBalance();
            private static final e2<ExactBalance> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<ExactBalance> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ExactBalance m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ExactBalance(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return j.f48861j.d(ExactBalance.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public ExactBalance build() {
                    ExactBalance I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public ExactBalance I() {
                    ExactBalance exactBalance = new ExactBalance(this, (a) null);
                    Q();
                    return exactBalance;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public ExactBalance getDefaultInstanceForType() {
                    return ExactBalance.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig$ExactBalance r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig$ExactBalance r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig$ExactBalance$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof ExactBalance) {
                        return g0((ExactBalance) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(ExactBalance exactBalance) {
                    if (exactBalance == ExactBalance.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) exactBalance).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return j.f48860i;
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

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
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

            /* synthetic */ ExactBalance(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ExactBalance getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return j.f48860i;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ExactBalance parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ExactBalance parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<ExactBalance> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof ExactBalance) {
                    return this.unknownFields.equals(((ExactBalance) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<ExactBalance> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
                int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return j.f48861j.d(ExactBalance.class, b.class);
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
                return new ExactBalance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ ExactBalance(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(ExactBalance exactBalance) {
                return DEFAULT_INSTANCE.toBuilder().g0(exactBalance);
            }

            public static ExactBalance parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private ExactBalance(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ExactBalance parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static ExactBalance parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public ExactBalance getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static ExactBalance parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private ExactBalance() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ExactBalance parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static ExactBalance parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private ExactBalance(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int L = pVar.L();
                                if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                    z10 = true;
                                }
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

            public static ExactBalance parseFrom(InputStream inputStream) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static ExactBalance parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static ExactBalance parseFrom(p pVar) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ExactBalance parseFrom(p pVar, f0 f0Var) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<ConnectionBalanceConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ConnectionBalanceConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ConnectionBalanceConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f48765e;

            /* renamed from: f  reason: collision with root package name */
            private Object f48766f;

            /* renamed from: g  reason: collision with root package name */
            private q2<ExactBalance, ExactBalance.b, c> f48767g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f48859h.d(ConnectionBalanceConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ConnectionBalanceConfig build() {
                ConnectionBalanceConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ConnectionBalanceConfig I() {
                ConnectionBalanceConfig connectionBalanceConfig = new ConnectionBalanceConfig(this, (a) null);
                if (this.f48765e == 1) {
                    q2<ExactBalance, ExactBalance.b, c> q2Var = this.f48767g;
                    if (q2Var == null) {
                        connectionBalanceConfig.balanceType_ = this.f48766f;
                    } else {
                        connectionBalanceConfig.balanceType_ = q2Var.b();
                    }
                }
                connectionBalanceConfig.balanceTypeCase_ = this.f48765e;
                Q();
                return connectionBalanceConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ConnectionBalanceConfig getDefaultInstanceForType() {
                return ConnectionBalanceConfig.getDefaultInstance();
            }

            public b d0(ExactBalance exactBalance) {
                q2<ExactBalance, ExactBalance.b, c> q2Var = this.f48767g;
                if (q2Var == null) {
                    if (this.f48765e == 1 && this.f48766f != ExactBalance.getDefaultInstance()) {
                        this.f48766f = ExactBalance.newBuilder((ExactBalance) this.f48766f).g0(exactBalance).I();
                    } else {
                        this.f48766f = exactBalance;
                    }
                    R();
                } else {
                    if (this.f48765e == 1) {
                        q2Var.e(exactBalance);
                    }
                    this.f48767g.g(exactBalance);
                }
                this.f48765e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$ConnectionBalanceConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ConnectionBalanceConfig) {
                    return h0((ConnectionBalanceConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f48858g;
            }

            public b h0(ConnectionBalanceConfig connectionBalanceConfig) {
                if (connectionBalanceConfig == ConnectionBalanceConfig.getDefaultInstance()) {
                    return this;
                }
                if (b.f48770a[connectionBalanceConfig.getBalanceTypeCase().ordinal()] == 1) {
                    d0(connectionBalanceConfig.getExactBalance());
                }
                z(((GeneratedMessageV3) connectionBalanceConfig).unknownFields);
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
                this.f48765e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48765e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* synthetic */ ConnectionBalanceConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ConnectionBalanceConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f48858g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ConnectionBalanceConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ConnectionBalanceConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ConnectionBalanceConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ConnectionBalanceConfig)) {
                return super.equals(obj);
            }
            ConnectionBalanceConfig connectionBalanceConfig = (ConnectionBalanceConfig) obj;
            if (getBalanceTypeCase().equals(connectionBalanceConfig.getBalanceTypeCase())) {
                return (this.balanceTypeCase_ != 1 || getExactBalance().equals(connectionBalanceConfig.getExactBalance())) && this.unknownFields.equals(connectionBalanceConfig.unknownFields);
            }
            return false;
        }

        public BalanceTypeCase getBalanceTypeCase() {
            return BalanceTypeCase.forNumber(this.balanceTypeCase_);
        }

        public ExactBalance getExactBalance() {
            if (this.balanceTypeCase_ == 1) {
                return (ExactBalance) this.balanceType_;
            }
            return ExactBalance.getDefaultInstance();
        }

        public c getExactBalanceOrBuilder() {
            if (this.balanceTypeCase_ == 1) {
                return (ExactBalance) this.balanceType_;
            }
            return ExactBalance.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ConnectionBalanceConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.balanceTypeCase_ == 1 ? 0 + CodedOutputStream.G(1, (ExactBalance) this.balanceType_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasExactBalance() {
            return this.balanceTypeCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (this.balanceTypeCase_ == 1) {
                hashCode = (((hashCode * 37) + 1) * 53) + getExactBalance().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f48859h.d(ConnectionBalanceConfig.class, b.class);
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
            return new ConnectionBalanceConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.balanceTypeCase_ == 1) {
                codedOutputStream.L0(1, (ExactBalance) this.balanceType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ConnectionBalanceConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ConnectionBalanceConfig connectionBalanceConfig) {
            return DEFAULT_INSTANCE.toBuilder().h0(connectionBalanceConfig);
        }

        public static ConnectionBalanceConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ConnectionBalanceConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.balanceTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ConnectionBalanceConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ConnectionBalanceConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ConnectionBalanceConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static ConnectionBalanceConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static ConnectionBalanceConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private ConnectionBalanceConfig() {
            this.balanceTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ConnectionBalanceConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ConnectionBalanceConfig parseFrom(InputStream inputStream) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ConnectionBalanceConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ExactBalance.b builder = this.balanceTypeCase_ == 1 ? ((ExactBalance) this.balanceType_).toBuilder() : null;
                                o1 B = pVar.B(ExactBalance.parser(), f0Var);
                                this.balanceType_ = B;
                                if (builder != null) {
                                    builder.g0((ExactBalance) B);
                                    this.balanceType_ = builder.I();
                                }
                                this.balanceTypeCase_ = 1;
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

        public static ConnectionBalanceConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ConnectionBalanceConfig parseFrom(p pVar) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ConnectionBalanceConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class DeprecatedV1 extends GeneratedMessageV3 implements e {
        public static final int BIND_TO_PORT_FIELD_NUMBER = 1;
        private static final DeprecatedV1 DEFAULT_INSTANCE = new DeprecatedV1();
        private static final e2<DeprecatedV1> PARSER = new a();
        private static final long serialVersionUID = 0;
        private BoolValue bindToPort_;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<DeprecatedV1> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DeprecatedV1 m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DeprecatedV1(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private BoolValue f48768e;

            /* renamed from: f  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48769f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f48857f.d(DeprecatedV1.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public DeprecatedV1 build() {
                DeprecatedV1 I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public DeprecatedV1 I() {
                DeprecatedV1 deprecatedV1 = new DeprecatedV1(this, (a) null);
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48769f;
                if (q2Var == null) {
                    deprecatedV1.bindToPort_ = this.f48768e;
                } else {
                    deprecatedV1.bindToPort_ = q2Var.b();
                }
                Q();
                return deprecatedV1;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public DeprecatedV1 getDefaultInstanceForType() {
                return DeprecatedV1.getDefaultInstance();
            }

            public b d0(BoolValue boolValue) {
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48769f;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f48768e;
                    if (boolValue2 != null) {
                        this.f48768e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f48768e = boolValue;
                    }
                    R();
                } else {
                    q2Var.e(boolValue);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.DeprecatedV1.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.DeprecatedV1.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$DeprecatedV1 r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.DeprecatedV1) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$DeprecatedV1 r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.DeprecatedV1) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.DeprecatedV1.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$DeprecatedV1$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof DeprecatedV1) {
                    return h0((DeprecatedV1) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f48856e;
            }

            public b h0(DeprecatedV1 deprecatedV1) {
                if (deprecatedV1 == DeprecatedV1.getDefaultInstance()) {
                    return this;
                }
                if (deprecatedV1.hasBindToPort()) {
                    d0(deprecatedV1.getBindToPort());
                }
                z(((GeneratedMessageV3) deprecatedV1).unknownFields);
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
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                b0();
            }
        }

        /* synthetic */ DeprecatedV1(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DeprecatedV1 getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f48856e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DeprecatedV1 parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DeprecatedV1 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<DeprecatedV1> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DeprecatedV1)) {
                return super.equals(obj);
            }
            DeprecatedV1 deprecatedV1 = (DeprecatedV1) obj;
            if (hasBindToPort() != deprecatedV1.hasBindToPort()) {
                return false;
            }
            return (!hasBindToPort() || getBindToPort().equals(deprecatedV1.getBindToPort())) && this.unknownFields.equals(deprecatedV1.unknownFields);
        }

        public BoolValue getBindToPort() {
            BoolValue boolValue = this.bindToPort_;
            return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
        }

        public com.google.protobuf.l getBindToPortOrBuilder() {
            return getBindToPort();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<DeprecatedV1> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = (this.bindToPort_ != null ? 0 + CodedOutputStream.G(1, getBindToPort()) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = G;
            return G;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasBindToPort() {
            return this.bindToPort_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasBindToPort()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getBindToPort().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f48857f.d(DeprecatedV1.class, b.class);
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
            return new DeprecatedV1();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.bindToPort_ != null) {
                codedOutputStream.L0(1, getBindToPort());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ DeprecatedV1(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(DeprecatedV1 deprecatedV1) {
            return DEFAULT_INSTANCE.toBuilder().h0(deprecatedV1);
        }

        public static DeprecatedV1 parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private DeprecatedV1(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DeprecatedV1 parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static DeprecatedV1 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public DeprecatedV1 getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static DeprecatedV1 parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private DeprecatedV1() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DeprecatedV1 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static DeprecatedV1 parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private DeprecatedV1(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    BoolValue boolValue = this.bindToPort_;
                                    BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                                    BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                    this.bindToPort_ = boolValue2;
                                    if (builder != null) {
                                        builder.d0(boolValue2);
                                        this.bindToPort_ = builder.I();
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

        public static DeprecatedV1 parseFrom(InputStream inputStream) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DeprecatedV1 parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static DeprecatedV1 parseFrom(p pVar) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DeprecatedV1 parseFrom(p pVar, f0 f0Var) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum DrainType implements h2 {
        DEFAULT(0),
        MODIFY_ONLY(1),
        UNRECOGNIZED(-1);
        
        public static final int DEFAULT_VALUE = 0;
        public static final int MODIFY_ONLY_VALUE = 1;
        private final int value;
        private static final u0.d<DrainType> internalValueMap = new a();
        private static final DrainType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<DrainType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public DrainType a(int i9) {
                return DrainType.forNumber(i9);
            }
        }

        DrainType(int i9) {
            this.value = i9;
        }

        public static DrainType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return MODIFY_ONLY;
            }
            return DEFAULT;
        }

        public static final Descriptors.d getDescriptor() {
            return Listener.getDescriptor().k().get(0);
        }

        public static u0.d<DrainType> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static DrainType valueOf(int i9) {
            return forNumber(i9);
        }

        public static DrainType valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes6.dex */
    public static final class InternalListenerConfig extends GeneratedMessageV3 implements f {
        private static final InternalListenerConfig DEFAULT_INSTANCE = new InternalListenerConfig();
        private static final e2<InternalListenerConfig> PARSER = new a();
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<InternalListenerConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public InternalListenerConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new InternalListenerConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {
            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f48863l.d(InternalListenerConfig.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public InternalListenerConfig build() {
                InternalListenerConfig I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public InternalListenerConfig I() {
                InternalListenerConfig internalListenerConfig = new InternalListenerConfig(this, (a) null);
                Q();
                return internalListenerConfig;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public InternalListenerConfig getDefaultInstanceForType() {
                return InternalListenerConfig.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.InternalListenerConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.InternalListenerConfig.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$InternalListenerConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.InternalListenerConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$InternalListenerConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.InternalListenerConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.InternalListenerConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$InternalListenerConfig$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof InternalListenerConfig) {
                    return g0((InternalListenerConfig) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(InternalListenerConfig internalListenerConfig) {
                if (internalListenerConfig == InternalListenerConfig.getDefaultInstance()) {
                    return this;
                }
                z(((GeneratedMessageV3) internalListenerConfig).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f48862k;
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

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
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

        /* synthetic */ InternalListenerConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static InternalListenerConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f48862k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static InternalListenerConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static InternalListenerConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<InternalListenerConfig> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof InternalListenerConfig) {
                return this.unknownFields.equals(((InternalListenerConfig) obj).unknownFields);
            }
            return super.equals(obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<InternalListenerConfig> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int serializedSize = this.unknownFields.getSerializedSize() + 0;
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
            int hashCode = ((779 + getDescriptor().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f48863l.d(InternalListenerConfig.class, b.class);
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
            return new InternalListenerConfig();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ InternalListenerConfig(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(InternalListenerConfig internalListenerConfig) {
            return DEFAULT_INSTANCE.toBuilder().g0(internalListenerConfig);
        }

        public static InternalListenerConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private InternalListenerConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InternalListenerConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static InternalListenerConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public InternalListenerConfig getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static InternalListenerConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private InternalListenerConfig() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static InternalListenerConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static InternalListenerConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private InternalListenerConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L == 0 || !parseUnknownField(pVar, h10, f0Var, L)) {
                                z10 = true;
                            }
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

        public static InternalListenerConfig parseFrom(InputStream inputStream) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static InternalListenerConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static InternalListenerConfig parseFrom(p pVar) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static InternalListenerConfig parseFrom(p pVar, f0 f0Var) throws IOException {
            return (InternalListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum ListenerSpecifierCase implements u0.c {
        INTERNAL_LISTENER(27),
        LISTENERSPECIFIER_NOT_SET(0);
        
        private final int value;

        ListenerSpecifierCase(int i9) {
            this.value = i9;
        }

        public static ListenerSpecifierCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 27) {
                    return null;
                }
                return INTERNAL_LISTENER;
            }
            return LISTENERSPECIFIER_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ListenerSpecifierCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Listener> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Listener m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Listener(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48770a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f48771b;

        static {
            int[] iArr = new int[ListenerSpecifierCase.values().length];
            f48771b = iArr;
            try {
                iArr[ListenerSpecifierCase.INTERNAL_LISTENER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48771b[ListenerSpecifierCase.LISTENERSPECIFIER_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ConnectionBalanceConfig.BalanceTypeCase.values().length];
            f48770a = iArr2;
            try {
                iArr2[ConnectionBalanceConfig.BalanceTypeCase.EXACT_BALANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48770a[ConnectionBalanceConfig.BalanceTypeCase.BALANCETYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements i {
        private Duration A;
        private q2<Duration, Duration.b, v> B;
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> B3;
        private boolean C;
        private q2<UInt32Value, UInt32Value.b, e3> C4;
        private BoolValue D;
        private BoolValue D4;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> E;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> E4;
        private BoolValue F;
        private q2<InternalListenerConfig, InternalListenerConfig.b, f> F4;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> G;
        private List<SocketOption> H;
        private l2<SocketOption, SocketOption.c, c1> I;
        private UInt32Value J;
        private q2<UInt32Value, UInt32Value.b, e3> K;
        private int L;
        private UdpListenerConfig M;
        private q2<UdpListenerConfig, UdpListenerConfig.b, m> N;
        private ApiListener O;
        private q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.a> P;
        private ConnectionBalanceConfig Q;
        private q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> R;
        private BoolValue V1;
        private List<AccessLog> V2;
        private UInt32Value V3;

        /* renamed from: a1  reason: collision with root package name */
        private boolean f48772a1;

        /* renamed from: a2  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48773a2;

        /* renamed from: e  reason: collision with root package name */
        private int f48774e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48775f;

        /* renamed from: g  reason: collision with root package name */
        private int f48776g;

        /* renamed from: h  reason: collision with root package name */
        private Object f48777h;

        /* renamed from: i  reason: collision with root package name */
        private Address f48778i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> f48779j;

        /* renamed from: k  reason: collision with root package name */
        private Object f48780k;

        /* renamed from: l  reason: collision with root package name */
        private List<FilterChain> f48781l;

        /* renamed from: m  reason: collision with root package name */
        private l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> f48782m;

        /* renamed from: n  reason: collision with root package name */
        private BoolValue f48783n;

        /* renamed from: o  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48784o;

        /* renamed from: p  reason: collision with root package name */
        private FilterChain f48785p;

        /* renamed from: q  reason: collision with root package name */
        private q2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> f48786q;

        /* renamed from: r  reason: collision with root package name */
        private UInt32Value f48787r;

        /* renamed from: s  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48788s;

        /* renamed from: t  reason: collision with root package name */
        private Metadata f48789t;

        /* renamed from: u  reason: collision with root package name */
        private q2<Metadata, Metadata.b, k0> f48790u;

        /* renamed from: v  reason: collision with root package name */
        private DeprecatedV1 f48791v;

        /* renamed from: w  reason: collision with root package name */
        private q2<DeprecatedV1, DeprecatedV1.b, e> f48792w;

        /* renamed from: x  reason: collision with root package name */
        private int f48793x;

        /* renamed from: y  reason: collision with root package name */
        private List<ListenerFilter> f48794y;

        /* renamed from: z  reason: collision with root package name */
        private l2<ListenerFilter, ListenerFilter.c, h> f48795z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48776g & 8) == 0) {
                this.V2 = new ArrayList(this.V2);
                this.f48776g |= 8;
            }
        }

        private void b0() {
            if ((this.f48776g & 1) == 0) {
                this.f48781l = new ArrayList(this.f48781l);
                this.f48776g |= 1;
            }
        }

        private void d0() {
            if ((this.f48776g & 2) == 0) {
                this.f48794y = new ArrayList(this.f48794y);
                this.f48776g |= 2;
            }
        }

        private void e0() {
            if ((this.f48776g & 4) == 0) {
                this.H = new ArrayList(this.H);
                this.f48776g |= 4;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> g0() {
            if (this.B3 == null) {
                this.B3 = new l2<>(this.V2, (this.f48776g & 8) != 0, H(), O());
                this.V2 = null;
            }
            return this.B3;
        }

        private l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> i0() {
            if (this.f48782m == null) {
                this.f48782m = new l2<>(this.f48781l, (this.f48776g & 1) != 0, H(), O());
                this.f48781l = null;
            }
            return this.f48782m;
        }

        private l2<ListenerFilter, ListenerFilter.c, h> j0() {
            if (this.f48795z == null) {
                this.f48795z = new l2<>(this.f48794y, (this.f48776g & 2) != 0, H(), O());
                this.f48794y = null;
            }
            return this.f48795z;
        }

        private l2<SocketOption, SocketOption.c, c1> k0() {
            if (this.I == null) {
                this.I = new l2<>(this.H, (this.f48776g & 4) != 0, H(), O());
                this.H = null;
            }
            return this.I;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                j0();
                k0();
                g0();
            }
        }

        public c B0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.B;
            if (q2Var == null) {
                Duration duration2 = this.A;
                if (duration2 != null) {
                    this.A = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.A = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c D0(Metadata metadata) {
            q2<Metadata, Metadata.b, k0> q2Var = this.f48790u;
            if (q2Var == null) {
                Metadata metadata2 = this.f48789t;
                if (metadata2 != null) {
                    this.f48789t = Metadata.newBuilder(metadata2).k0(metadata).I();
                } else {
                    this.f48789t = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public c H0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48788s;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48787r;
                if (uInt32Value2 != null) {
                    this.f48787r = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48787r = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c I0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.C4;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.V3;
                if (uInt32Value2 != null) {
                    this.V3 = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.V3 = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c J0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.K;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.J;
                if (uInt32Value2 != null) {
                    this.J = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.J = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f48855d.d(Listener.class, c.class);
        }

        public c K0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.E;
            if (q2Var == null) {
                BoolValue boolValue2 = this.D;
                if (boolValue2 != null) {
                    this.D = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.D = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c L0(UdpListenerConfig udpListenerConfig) {
            q2<UdpListenerConfig, UdpListenerConfig.b, m> q2Var = this.N;
            if (q2Var == null) {
                UdpListenerConfig udpListenerConfig2 = this.M;
                if (udpListenerConfig2 != null) {
                    this.M = UdpListenerConfig.newBuilder(udpListenerConfig2).h0(udpListenerConfig).I();
                } else {
                    this.M = udpListenerConfig;
                }
                R();
            } else {
                q2Var.e(udpListenerConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: M0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c N0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48784o;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48783n;
                if (boolValue2 != null) {
                    this.f48783n = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48783n = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c O0(boolean z10) {
            this.C = z10;
            R();
            return this;
        }

        public c Q0(int i9) {
            this.f48793x = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: S0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Deprecated
        public c T0(boolean z10) {
            this.f48772a1 = z10;
            R();
            return this;
        }

        public c U0(int i9) {
            this.L = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: V0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Listener build() {
            Listener I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Listener I() {
            Listener listener = new Listener(this, (a) null);
            listener.name_ = this.f48777h;
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48779j;
            if (q2Var == null) {
                listener.address_ = this.f48778i;
            } else {
                listener.address_ = q2Var.b();
            }
            listener.statPrefix_ = this.f48780k;
            l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> l2Var = this.f48782m;
            if (l2Var == null) {
                if ((this.f48776g & 1) != 0) {
                    this.f48781l = Collections.unmodifiableList(this.f48781l);
                    this.f48776g &= -2;
                }
                listener.filterChains_ = this.f48781l;
            } else {
                listener.filterChains_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f48784o;
            if (q2Var2 == null) {
                listener.useOriginalDst_ = this.f48783n;
            } else {
                listener.useOriginalDst_ = q2Var2.b();
            }
            q2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> q2Var3 = this.f48786q;
            if (q2Var3 == null) {
                listener.defaultFilterChain_ = this.f48785p;
            } else {
                listener.defaultFilterChain_ = q2Var3.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f48788s;
            if (q2Var4 == null) {
                listener.perConnectionBufferLimitBytes_ = this.f48787r;
            } else {
                listener.perConnectionBufferLimitBytes_ = q2Var4.b();
            }
            q2<Metadata, Metadata.b, k0> q2Var5 = this.f48790u;
            if (q2Var5 == null) {
                listener.metadata_ = this.f48789t;
            } else {
                listener.metadata_ = q2Var5.b();
            }
            q2<DeprecatedV1, DeprecatedV1.b, e> q2Var6 = this.f48792w;
            if (q2Var6 == null) {
                listener.deprecatedV1_ = this.f48791v;
            } else {
                listener.deprecatedV1_ = q2Var6.b();
            }
            listener.drainType_ = this.f48793x;
            l2<ListenerFilter, ListenerFilter.c, h> l2Var2 = this.f48795z;
            if (l2Var2 == null) {
                if ((this.f48776g & 2) != 0) {
                    this.f48794y = Collections.unmodifiableList(this.f48794y);
                    this.f48776g &= -3;
                }
                listener.listenerFilters_ = this.f48794y;
            } else {
                listener.listenerFilters_ = l2Var2.e();
            }
            q2<Duration, Duration.b, v> q2Var7 = this.B;
            if (q2Var7 == null) {
                listener.listenerFiltersTimeout_ = this.A;
            } else {
                listener.listenerFiltersTimeout_ = q2Var7.b();
            }
            listener.continueOnListenerFiltersTimeout_ = this.C;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var8 = this.E;
            if (q2Var8 == null) {
                listener.transparent_ = this.D;
            } else {
                listener.transparent_ = q2Var8.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var9 = this.G;
            if (q2Var9 == null) {
                listener.freebind_ = this.F;
            } else {
                listener.freebind_ = q2Var9.b();
            }
            l2<SocketOption, SocketOption.c, c1> l2Var3 = this.I;
            if (l2Var3 == null) {
                if ((this.f48776g & 4) != 0) {
                    this.H = Collections.unmodifiableList(this.H);
                    this.f48776g &= -5;
                }
                listener.socketOptions_ = this.H;
            } else {
                listener.socketOptions_ = l2Var3.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var10 = this.K;
            if (q2Var10 == null) {
                listener.tcpFastOpenQueueLength_ = this.J;
            } else {
                listener.tcpFastOpenQueueLength_ = q2Var10.b();
            }
            listener.trafficDirection_ = this.L;
            q2<UdpListenerConfig, UdpListenerConfig.b, m> q2Var11 = this.N;
            if (q2Var11 == null) {
                listener.udpListenerConfig_ = this.M;
            } else {
                listener.udpListenerConfig_ = q2Var11.b();
            }
            q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.a> q2Var12 = this.P;
            if (q2Var12 == null) {
                listener.apiListener_ = this.O;
            } else {
                listener.apiListener_ = q2Var12.b();
            }
            q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> q2Var13 = this.R;
            if (q2Var13 == null) {
                listener.connectionBalanceConfig_ = this.Q;
            } else {
                listener.connectionBalanceConfig_ = q2Var13.b();
            }
            listener.reusePort_ = this.f48772a1;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var14 = this.f48773a2;
            if (q2Var14 == null) {
                listener.enableReusePort_ = this.V1;
            } else {
                listener.enableReusePort_ = q2Var14.b();
            }
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> l2Var4 = this.B3;
            if (l2Var4 == null) {
                if ((this.f48776g & 8) != 0) {
                    this.V2 = Collections.unmodifiableList(this.V2);
                    this.f48776g &= -9;
                }
                listener.accessLog_ = this.V2;
            } else {
                listener.accessLog_ = l2Var4.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var15 = this.C4;
            if (q2Var15 == null) {
                listener.tcpBacklogSize_ = this.V3;
            } else {
                listener.tcpBacklogSize_ = q2Var15.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var16 = this.E4;
            if (q2Var16 == null) {
                listener.bindToPort_ = this.D4;
            } else {
                listener.bindToPort_ = q2Var16.b();
            }
            if (this.f48774e == 27) {
                q2<InternalListenerConfig, InternalListenerConfig.b, f> q2Var17 = this.F4;
                if (q2Var17 == null) {
                    listener.listenerSpecifier_ = this.f48775f;
                } else {
                    listener.listenerSpecifier_ = q2Var17.b();
                }
            }
            listener.listenerSpecifierCase_ = this.f48774e;
            Q();
            return listener;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f48854c;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public Listener getDefaultInstanceForType() {
            return Listener.getDefaultInstance();
        }

        public c m0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a> q2Var = this.f48779j;
            if (q2Var == null) {
                Address address2 = this.f48778i;
                if (address2 != null) {
                    this.f48778i = Address.newBuilder(address2).h0(address).I();
                } else {
                    this.f48778i = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        public c n0(ApiListener apiListener) {
            q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.a> q2Var = this.P;
            if (q2Var == null) {
                ApiListener apiListener2 = this.O;
                if (apiListener2 != null) {
                    this.O = ApiListener.newBuilder(apiListener2).h0(apiListener).I();
                } else {
                    this.O = apiListener;
                }
                R();
            } else {
                q2Var.e(apiListener);
            }
            return this;
        }

        public c o0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.E4;
            if (q2Var == null) {
                BoolValue boolValue2 = this.D4;
                if (boolValue2 != null) {
                    this.D4 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.D4 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c q0(ConnectionBalanceConfig connectionBalanceConfig) {
            q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> q2Var = this.R;
            if (q2Var == null) {
                ConnectionBalanceConfig connectionBalanceConfig2 = this.Q;
                if (connectionBalanceConfig2 != null) {
                    this.Q = ConnectionBalanceConfig.newBuilder(connectionBalanceConfig2).h0(connectionBalanceConfig).I();
                } else {
                    this.Q = connectionBalanceConfig;
                }
                R();
            } else {
                q2Var.e(connectionBalanceConfig);
            }
            return this;
        }

        public c r0(FilterChain filterChain) {
            q2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> q2Var = this.f48786q;
            if (q2Var == null) {
                FilterChain filterChain2 = this.f48785p;
                if (filterChain2 != null) {
                    this.f48785p = FilterChain.newBuilder(filterChain2).j0(filterChain).I();
                } else {
                    this.f48785p = filterChain;
                }
                R();
            } else {
                q2Var.e(filterChain);
            }
            return this;
        }

        @Deprecated
        public c s0(DeprecatedV1 deprecatedV1) {
            q2<DeprecatedV1, DeprecatedV1.b, e> q2Var = this.f48792w;
            if (q2Var == null) {
                DeprecatedV1 deprecatedV12 = this.f48791v;
                if (deprecatedV12 != null) {
                    this.f48791v = DeprecatedV1.newBuilder(deprecatedV12).h0(deprecatedV1).I();
                } else {
                    this.f48791v = deprecatedV1;
                }
                R();
            } else {
                q2Var.e(deprecatedV1);
            }
            return this;
        }

        public c t0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48773a2;
            if (q2Var == null) {
                BoolValue boolValue2 = this.V1;
                if (boolValue2 != null) {
                    this.V1 = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.V1 = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c u0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.G;
            if (q2Var == null) {
                BoolValue boolValue2 = this.F;
                if (boolValue2 != null) {
                    this.F = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.F = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: v0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.access$6800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.y0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.y0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.Listener$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: x0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Listener) {
                return y0((Listener) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c y0(Listener listener) {
            if (listener == Listener.getDefaultInstance()) {
                return this;
            }
            if (!listener.getName().isEmpty()) {
                this.f48777h = listener.name_;
                R();
            }
            if (listener.hasAddress()) {
                m0(listener.getAddress());
            }
            if (!listener.getStatPrefix().isEmpty()) {
                this.f48780k = listener.statPrefix_;
                R();
            }
            if (this.f48782m == null) {
                if (!listener.filterChains_.isEmpty()) {
                    if (this.f48781l.isEmpty()) {
                        this.f48781l = listener.filterChains_;
                        this.f48776g &= -2;
                    } else {
                        b0();
                        this.f48781l.addAll(listener.filterChains_);
                    }
                    R();
                }
            } else if (!listener.filterChains_.isEmpty()) {
                if (this.f48782m.k()) {
                    this.f48782m.f();
                    this.f48782m = null;
                    this.f48781l = listener.filterChains_;
                    this.f48776g &= -2;
                    this.f48782m = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f48782m.b(listener.filterChains_);
                }
            }
            if (listener.hasUseOriginalDst()) {
                N0(listener.getUseOriginalDst());
            }
            if (listener.hasDefaultFilterChain()) {
                r0(listener.getDefaultFilterChain());
            }
            if (listener.hasPerConnectionBufferLimitBytes()) {
                H0(listener.getPerConnectionBufferLimitBytes());
            }
            if (listener.hasMetadata()) {
                D0(listener.getMetadata());
            }
            if (listener.hasDeprecatedV1()) {
                s0(listener.getDeprecatedV1());
            }
            if (listener.drainType_ != 0) {
                Q0(listener.getDrainTypeValue());
            }
            if (this.f48795z == null) {
                if (!listener.listenerFilters_.isEmpty()) {
                    if (this.f48794y.isEmpty()) {
                        this.f48794y = listener.listenerFilters_;
                        this.f48776g &= -3;
                    } else {
                        d0();
                        this.f48794y.addAll(listener.listenerFilters_);
                    }
                    R();
                }
            } else if (!listener.listenerFilters_.isEmpty()) {
                if (this.f48795z.k()) {
                    this.f48795z.f();
                    this.f48795z = null;
                    this.f48794y = listener.listenerFilters_;
                    this.f48776g &= -3;
                    this.f48795z = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f48795z.b(listener.listenerFilters_);
                }
            }
            if (listener.hasListenerFiltersTimeout()) {
                B0(listener.getListenerFiltersTimeout());
            }
            if (listener.getContinueOnListenerFiltersTimeout()) {
                O0(listener.getContinueOnListenerFiltersTimeout());
            }
            if (listener.hasTransparent()) {
                K0(listener.getTransparent());
            }
            if (listener.hasFreebind()) {
                u0(listener.getFreebind());
            }
            if (this.I == null) {
                if (!listener.socketOptions_.isEmpty()) {
                    if (this.H.isEmpty()) {
                        this.H = listener.socketOptions_;
                        this.f48776g &= -5;
                    } else {
                        e0();
                        this.H.addAll(listener.socketOptions_);
                    }
                    R();
                }
            } else if (!listener.socketOptions_.isEmpty()) {
                if (this.I.k()) {
                    this.I.f();
                    this.I = null;
                    this.H = listener.socketOptions_;
                    this.f48776g &= -5;
                    this.I = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.I.b(listener.socketOptions_);
                }
            }
            if (listener.hasTcpFastOpenQueueLength()) {
                J0(listener.getTcpFastOpenQueueLength());
            }
            if (listener.trafficDirection_ != 0) {
                U0(listener.getTrafficDirectionValue());
            }
            if (listener.hasUdpListenerConfig()) {
                L0(listener.getUdpListenerConfig());
            }
            if (listener.hasApiListener()) {
                n0(listener.getApiListener());
            }
            if (listener.hasConnectionBalanceConfig()) {
                q0(listener.getConnectionBalanceConfig());
            }
            if (listener.getReusePort()) {
                T0(listener.getReusePort());
            }
            if (listener.hasEnableReusePort()) {
                t0(listener.getEnableReusePort());
            }
            if (this.B3 == null) {
                if (!listener.accessLog_.isEmpty()) {
                    if (this.V2.isEmpty()) {
                        this.V2 = listener.accessLog_;
                        this.f48776g &= -9;
                    } else {
                        a0();
                        this.V2.addAll(listener.accessLog_);
                    }
                    R();
                }
            } else if (!listener.accessLog_.isEmpty()) {
                if (this.B3.k()) {
                    this.B3.f();
                    this.B3 = null;
                    this.V2 = listener.accessLog_;
                    this.f48776g &= -9;
                    this.B3 = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.B3.b(listener.accessLog_);
                }
            }
            if (listener.hasTcpBacklogSize()) {
                I0(listener.getTcpBacklogSize());
            }
            if (listener.hasBindToPort()) {
                o0(listener.getBindToPort());
            }
            if (b.f48771b[listener.getListenerSpecifierCase().ordinal()] == 1) {
                z0(listener.getInternalListener());
            }
            z(((GeneratedMessageV3) listener).unknownFields);
            R();
            return this;
        }

        public c z0(InternalListenerConfig internalListenerConfig) {
            q2<InternalListenerConfig, InternalListenerConfig.b, f> q2Var = this.F4;
            if (q2Var == null) {
                if (this.f48774e == 27 && this.f48775f != InternalListenerConfig.getDefaultInstance()) {
                    this.f48775f = InternalListenerConfig.newBuilder((InternalListenerConfig) this.f48775f).g0(internalListenerConfig).I();
                } else {
                    this.f48775f = internalListenerConfig;
                }
                R();
            } else {
                if (this.f48774e == 27) {
                    q2Var.e(internalListenerConfig);
                }
                this.F4.g(internalListenerConfig);
            }
            this.f48774e = 27;
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48774e = 0;
            this.f48777h = "";
            this.f48780k = "";
            this.f48781l = Collections.emptyList();
            this.f48793x = 0;
            this.f48794y = Collections.emptyList();
            this.H = Collections.emptyList();
            this.L = 0;
            this.V2 = Collections.emptyList();
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48774e = 0;
            this.f48777h = "";
            this.f48780k = "";
            this.f48781l = Collections.emptyList();
            this.f48793x = 0;
            this.f48794y = Collections.emptyList();
            this.H = Collections.emptyList();
            this.L = 0;
            this.V2 = Collections.emptyList();
            l0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface f extends r1 {
    }

    /* synthetic */ Listener(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Listener getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f48854c;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Listener parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Listener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Listener parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Listener> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Listener)) {
            return super.equals(obj);
        }
        Listener listener = (Listener) obj;
        if (getName().equals(listener.getName()) && hasAddress() == listener.hasAddress()) {
            if ((!hasAddress() || getAddress().equals(listener.getAddress())) && getStatPrefix().equals(listener.getStatPrefix()) && getFilterChainsList().equals(listener.getFilterChainsList()) && hasUseOriginalDst() == listener.hasUseOriginalDst()) {
                if ((!hasUseOriginalDst() || getUseOriginalDst().equals(listener.getUseOriginalDst())) && hasDefaultFilterChain() == listener.hasDefaultFilterChain()) {
                    if ((!hasDefaultFilterChain() || getDefaultFilterChain().equals(listener.getDefaultFilterChain())) && hasPerConnectionBufferLimitBytes() == listener.hasPerConnectionBufferLimitBytes()) {
                        if ((!hasPerConnectionBufferLimitBytes() || getPerConnectionBufferLimitBytes().equals(listener.getPerConnectionBufferLimitBytes())) && hasMetadata() == listener.hasMetadata()) {
                            if ((!hasMetadata() || getMetadata().equals(listener.getMetadata())) && hasDeprecatedV1() == listener.hasDeprecatedV1()) {
                                if ((!hasDeprecatedV1() || getDeprecatedV1().equals(listener.getDeprecatedV1())) && this.drainType_ == listener.drainType_ && getListenerFiltersList().equals(listener.getListenerFiltersList()) && hasListenerFiltersTimeout() == listener.hasListenerFiltersTimeout()) {
                                    if ((!hasListenerFiltersTimeout() || getListenerFiltersTimeout().equals(listener.getListenerFiltersTimeout())) && getContinueOnListenerFiltersTimeout() == listener.getContinueOnListenerFiltersTimeout() && hasTransparent() == listener.hasTransparent()) {
                                        if ((!hasTransparent() || getTransparent().equals(listener.getTransparent())) && hasFreebind() == listener.hasFreebind()) {
                                            if ((!hasFreebind() || getFreebind().equals(listener.getFreebind())) && getSocketOptionsList().equals(listener.getSocketOptionsList()) && hasTcpFastOpenQueueLength() == listener.hasTcpFastOpenQueueLength()) {
                                                if ((!hasTcpFastOpenQueueLength() || getTcpFastOpenQueueLength().equals(listener.getTcpFastOpenQueueLength())) && this.trafficDirection_ == listener.trafficDirection_ && hasUdpListenerConfig() == listener.hasUdpListenerConfig()) {
                                                    if ((!hasUdpListenerConfig() || getUdpListenerConfig().equals(listener.getUdpListenerConfig())) && hasApiListener() == listener.hasApiListener()) {
                                                        if ((!hasApiListener() || getApiListener().equals(listener.getApiListener())) && hasConnectionBalanceConfig() == listener.hasConnectionBalanceConfig()) {
                                                            if ((!hasConnectionBalanceConfig() || getConnectionBalanceConfig().equals(listener.getConnectionBalanceConfig())) && getReusePort() == listener.getReusePort() && hasEnableReusePort() == listener.hasEnableReusePort()) {
                                                                if ((!hasEnableReusePort() || getEnableReusePort().equals(listener.getEnableReusePort())) && getAccessLogList().equals(listener.getAccessLogList()) && hasTcpBacklogSize() == listener.hasTcpBacklogSize()) {
                                                                    if ((!hasTcpBacklogSize() || getTcpBacklogSize().equals(listener.getTcpBacklogSize())) && hasBindToPort() == listener.hasBindToPort()) {
                                                                        if ((!hasBindToPort() || getBindToPort().equals(listener.getBindToPort())) && getListenerSpecifierCase().equals(listener.getListenerSpecifierCase())) {
                                                                            return (this.listenerSpecifierCase_ != 27 || getInternalListener().equals(listener.getInternalListener())) && this.unknownFields.equals(listener.unknownFields);
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
            return false;
        }
        return false;
    }

    public AccessLog getAccessLog(int i9) {
        return this.accessLog_.get(i9);
    }

    public int getAccessLogCount() {
        return this.accessLog_.size();
    }

    public List<AccessLog> getAccessLogList() {
        return this.accessLog_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b getAccessLogOrBuilder(int i9) {
        return this.accessLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.b> getAccessLogOrBuilderList() {
        return this.accessLog_;
    }

    public Address getAddress() {
        Address address = this.address_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.a getAddressOrBuilder() {
        return getAddress();
    }

    public ApiListener getApiListener() {
        ApiListener apiListener = this.apiListener_;
        return apiListener == null ? ApiListener.getDefaultInstance() : apiListener;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.a getApiListenerOrBuilder() {
        return getApiListener();
    }

    public BoolValue getBindToPort() {
        BoolValue boolValue = this.bindToPort_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getBindToPortOrBuilder() {
        return getBindToPort();
    }

    public ConnectionBalanceConfig getConnectionBalanceConfig() {
        ConnectionBalanceConfig connectionBalanceConfig = this.connectionBalanceConfig_;
        return connectionBalanceConfig == null ? ConnectionBalanceConfig.getDefaultInstance() : connectionBalanceConfig;
    }

    public d getConnectionBalanceConfigOrBuilder() {
        return getConnectionBalanceConfig();
    }

    public boolean getContinueOnListenerFiltersTimeout() {
        return this.continueOnListenerFiltersTimeout_;
    }

    public FilterChain getDefaultFilterChain() {
        FilterChain filterChain = this.defaultFilterChain_;
        return filterChain == null ? FilterChain.getDefaultInstance() : filterChain;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d getDefaultFilterChainOrBuilder() {
        return getDefaultFilterChain();
    }

    @Deprecated
    public DeprecatedV1 getDeprecatedV1() {
        DeprecatedV1 deprecatedV1 = this.deprecatedV1_;
        return deprecatedV1 == null ? DeprecatedV1.getDefaultInstance() : deprecatedV1;
    }

    @Deprecated
    public e getDeprecatedV1OrBuilder() {
        return getDeprecatedV1();
    }

    public DrainType getDrainType() {
        DrainType valueOf = DrainType.valueOf(this.drainType_);
        return valueOf == null ? DrainType.UNRECOGNIZED : valueOf;
    }

    public int getDrainTypeValue() {
        return this.drainType_;
    }

    public BoolValue getEnableReusePort() {
        BoolValue boolValue = this.enableReusePort_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getEnableReusePortOrBuilder() {
        return getEnableReusePort();
    }

    public FilterChain getFilterChains(int i9) {
        return this.filterChains_.get(i9);
    }

    public int getFilterChainsCount() {
        return this.filterChains_.size();
    }

    public List<FilterChain> getFilterChainsList() {
        return this.filterChains_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d getFilterChainsOrBuilder(int i9) {
        return this.filterChains_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.d> getFilterChainsOrBuilderList() {
        return this.filterChains_;
    }

    public BoolValue getFreebind() {
        BoolValue boolValue = this.freebind_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getFreebindOrBuilder() {
        return getFreebind();
    }

    public InternalListenerConfig getInternalListener() {
        if (this.listenerSpecifierCase_ == 27) {
            return (InternalListenerConfig) this.listenerSpecifier_;
        }
        return InternalListenerConfig.getDefaultInstance();
    }

    public f getInternalListenerOrBuilder() {
        if (this.listenerSpecifierCase_ == 27) {
            return (InternalListenerConfig) this.listenerSpecifier_;
        }
        return InternalListenerConfig.getDefaultInstance();
    }

    public ListenerFilter getListenerFilters(int i9) {
        return this.listenerFilters_.get(i9);
    }

    public int getListenerFiltersCount() {
        return this.listenerFilters_.size();
    }

    public List<ListenerFilter> getListenerFiltersList() {
        return this.listenerFilters_;
    }

    public h getListenerFiltersOrBuilder(int i9) {
        return this.listenerFilters_.get(i9);
    }

    public List<? extends h> getListenerFiltersOrBuilderList() {
        return this.listenerFilters_;
    }

    public Duration getListenerFiltersTimeout() {
        Duration duration = this.listenerFiltersTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getListenerFiltersTimeoutOrBuilder() {
        return getListenerFiltersTimeout();
    }

    public ListenerSpecifierCase getListenerSpecifierCase() {
        return ListenerSpecifierCase.forNumber(this.listenerSpecifierCase_);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Listener> getParserForType() {
        return PARSER;
    }

    public UInt32Value getPerConnectionBufferLimitBytes() {
        UInt32Value uInt32Value = this.perConnectionBufferLimitBytes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPerConnectionBufferLimitBytesOrBuilder() {
        return getPerConnectionBufferLimitBytes();
    }

    @Deprecated
    public boolean getReusePort() {
        return this.reusePort_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        if (this.address_ != null) {
            computeStringSize += CodedOutputStream.G(2, getAddress());
        }
        for (int i10 = 0; i10 < this.filterChains_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(3, this.filterChains_.get(i10));
        }
        if (this.useOriginalDst_ != null) {
            computeStringSize += CodedOutputStream.G(4, getUseOriginalDst());
        }
        if (this.perConnectionBufferLimitBytes_ != null) {
            computeStringSize += CodedOutputStream.G(5, getPerConnectionBufferLimitBytes());
        }
        if (this.metadata_ != null) {
            computeStringSize += CodedOutputStream.G(6, getMetadata());
        }
        if (this.deprecatedV1_ != null) {
            computeStringSize += CodedOutputStream.G(7, getDeprecatedV1());
        }
        if (this.drainType_ != DrainType.DEFAULT.getNumber()) {
            computeStringSize += CodedOutputStream.l(8, this.drainType_);
        }
        for (int i11 = 0; i11 < this.listenerFilters_.size(); i11++) {
            computeStringSize += CodedOutputStream.G(9, this.listenerFilters_.get(i11));
        }
        if (this.transparent_ != null) {
            computeStringSize += CodedOutputStream.G(10, getTransparent());
        }
        if (this.freebind_ != null) {
            computeStringSize += CodedOutputStream.G(11, getFreebind());
        }
        if (this.tcpFastOpenQueueLength_ != null) {
            computeStringSize += CodedOutputStream.G(12, getTcpFastOpenQueueLength());
        }
        for (int i12 = 0; i12 < this.socketOptions_.size(); i12++) {
            computeStringSize += CodedOutputStream.G(13, this.socketOptions_.get(i12));
        }
        if (this.listenerFiltersTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(15, getListenerFiltersTimeout());
        }
        if (this.trafficDirection_ != TrafficDirection.UNSPECIFIED.getNumber()) {
            computeStringSize += CodedOutputStream.l(16, this.trafficDirection_);
        }
        boolean z10 = this.continueOnListenerFiltersTimeout_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(17, z10);
        }
        if (this.udpListenerConfig_ != null) {
            computeStringSize += CodedOutputStream.G(18, getUdpListenerConfig());
        }
        if (this.apiListener_ != null) {
            computeStringSize += CodedOutputStream.G(19, getApiListener());
        }
        if (this.connectionBalanceConfig_ != null) {
            computeStringSize += CodedOutputStream.G(20, getConnectionBalanceConfig());
        }
        boolean z11 = this.reusePort_;
        if (z11) {
            computeStringSize += CodedOutputStream.e(21, z11);
        }
        for (int i13 = 0; i13 < this.accessLog_.size(); i13++) {
            computeStringSize += CodedOutputStream.G(22, this.accessLog_.get(i13));
        }
        if (this.tcpBacklogSize_ != null) {
            computeStringSize += CodedOutputStream.G(24, getTcpBacklogSize());
        }
        if (this.defaultFilterChain_ != null) {
            computeStringSize += CodedOutputStream.G(25, getDefaultFilterChain());
        }
        if (this.bindToPort_ != null) {
            computeStringSize += CodedOutputStream.G(26, getBindToPort());
        }
        if (this.listenerSpecifierCase_ == 27) {
            computeStringSize += CodedOutputStream.G(27, (InternalListenerConfig) this.listenerSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(28, this.statPrefix_);
        }
        if (this.enableReusePort_ != null) {
            computeStringSize += CodedOutputStream.G(29, getEnableReusePort());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public SocketOption getSocketOptions(int i9) {
        return this.socketOptions_.get(i9);
    }

    public int getSocketOptionsCount() {
        return this.socketOptions_.size();
    }

    public List<SocketOption> getSocketOptionsList() {
        return this.socketOptions_;
    }

    public c1 getSocketOptionsOrBuilder(int i9) {
        return this.socketOptions_.get(i9);
    }

    public List<? extends c1> getSocketOptionsOrBuilderList() {
        return this.socketOptions_;
    }

    public String getStatPrefix() {
        Object obj = this.statPrefix_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.statPrefix_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getStatPrefixBytes() {
        Object obj = this.statPrefix_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.statPrefix_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public UInt32Value getTcpBacklogSize() {
        UInt32Value uInt32Value = this.tcpBacklogSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getTcpBacklogSizeOrBuilder() {
        return getTcpBacklogSize();
    }

    public UInt32Value getTcpFastOpenQueueLength() {
        UInt32Value uInt32Value = this.tcpFastOpenQueueLength_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getTcpFastOpenQueueLengthOrBuilder() {
        return getTcpFastOpenQueueLength();
    }

    public TrafficDirection getTrafficDirection() {
        TrafficDirection valueOf = TrafficDirection.valueOf(this.trafficDirection_);
        return valueOf == null ? TrafficDirection.UNRECOGNIZED : valueOf;
    }

    public int getTrafficDirectionValue() {
        return this.trafficDirection_;
    }

    public BoolValue getTransparent() {
        BoolValue boolValue = this.transparent_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getTransparentOrBuilder() {
        return getTransparent();
    }

    public UdpListenerConfig getUdpListenerConfig() {
        UdpListenerConfig udpListenerConfig = this.udpListenerConfig_;
        return udpListenerConfig == null ? UdpListenerConfig.getDefaultInstance() : udpListenerConfig;
    }

    public m getUdpListenerConfigOrBuilder() {
        return getUdpListenerConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public BoolValue getUseOriginalDst() {
        BoolValue boolValue = this.useOriginalDst_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getUseOriginalDstOrBuilder() {
        return getUseOriginalDst();
    }

    public boolean hasAddress() {
        return this.address_ != null;
    }

    public boolean hasApiListener() {
        return this.apiListener_ != null;
    }

    public boolean hasBindToPort() {
        return this.bindToPort_ != null;
    }

    public boolean hasConnectionBalanceConfig() {
        return this.connectionBalanceConfig_ != null;
    }

    public boolean hasDefaultFilterChain() {
        return this.defaultFilterChain_ != null;
    }

    @Deprecated
    public boolean hasDeprecatedV1() {
        return this.deprecatedV1_ != null;
    }

    public boolean hasEnableReusePort() {
        return this.enableReusePort_ != null;
    }

    public boolean hasFreebind() {
        return this.freebind_ != null;
    }

    public boolean hasInternalListener() {
        return this.listenerSpecifierCase_ == 27;
    }

    public boolean hasListenerFiltersTimeout() {
        return this.listenerFiltersTimeout_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }

    public boolean hasPerConnectionBufferLimitBytes() {
        return this.perConnectionBufferLimitBytes_ != null;
    }

    public boolean hasTcpBacklogSize() {
        return this.tcpBacklogSize_ != null;
    }

    public boolean hasTcpFastOpenQueueLength() {
        return this.tcpFastOpenQueueLength_ != null;
    }

    public boolean hasTransparent() {
        return this.transparent_ != null;
    }

    public boolean hasUdpListenerConfig() {
        return this.udpListenerConfig_ != null;
    }

    public boolean hasUseOriginalDst() {
        return this.useOriginalDst_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasAddress()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getAddress().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 28) * 53) + getStatPrefix().hashCode();
        if (getFilterChainsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getFilterChainsList().hashCode();
        }
        if (hasUseOriginalDst()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getUseOriginalDst().hashCode();
        }
        if (hasDefaultFilterChain()) {
            hashCode2 = (((hashCode2 * 37) + 25) * 53) + getDefaultFilterChain().hashCode();
        }
        if (hasPerConnectionBufferLimitBytes()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getPerConnectionBufferLimitBytes().hashCode();
        }
        if (hasMetadata()) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getMetadata().hashCode();
        }
        if (hasDeprecatedV1()) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getDeprecatedV1().hashCode();
        }
        int i10 = (((hashCode2 * 37) + 8) * 53) + this.drainType_;
        if (getListenerFiltersCount() > 0) {
            i10 = (((i10 * 37) + 9) * 53) + getListenerFiltersList().hashCode();
        }
        if (hasListenerFiltersTimeout()) {
            i10 = (((i10 * 37) + 15) * 53) + getListenerFiltersTimeout().hashCode();
        }
        int d10 = (((i10 * 37) + 17) * 53) + u0.d(getContinueOnListenerFiltersTimeout());
        if (hasTransparent()) {
            d10 = (((d10 * 37) + 10) * 53) + getTransparent().hashCode();
        }
        if (hasFreebind()) {
            d10 = (((d10 * 37) + 11) * 53) + getFreebind().hashCode();
        }
        if (getSocketOptionsCount() > 0) {
            d10 = (((d10 * 37) + 13) * 53) + getSocketOptionsList().hashCode();
        }
        if (hasTcpFastOpenQueueLength()) {
            d10 = (((d10 * 37) + 12) * 53) + getTcpFastOpenQueueLength().hashCode();
        }
        int i11 = (((d10 * 37) + 16) * 53) + this.trafficDirection_;
        if (hasUdpListenerConfig()) {
            i11 = (((i11 * 37) + 18) * 53) + getUdpListenerConfig().hashCode();
        }
        if (hasApiListener()) {
            i11 = (((i11 * 37) + 19) * 53) + getApiListener().hashCode();
        }
        if (hasConnectionBalanceConfig()) {
            i11 = (((i11 * 37) + 20) * 53) + getConnectionBalanceConfig().hashCode();
        }
        int d11 = (((i11 * 37) + 21) * 53) + u0.d(getReusePort());
        if (hasEnableReusePort()) {
            d11 = (((d11 * 37) + 29) * 53) + getEnableReusePort().hashCode();
        }
        if (getAccessLogCount() > 0) {
            d11 = (((d11 * 37) + 22) * 53) + getAccessLogList().hashCode();
        }
        if (hasTcpBacklogSize()) {
            d11 = (((d11 * 37) + 24) * 53) + getTcpBacklogSize().hashCode();
        }
        if (hasBindToPort()) {
            d11 = (((d11 * 37) + 26) * 53) + getBindToPort().hashCode();
        }
        if (this.listenerSpecifierCase_ == 27) {
            d11 = (((d11 * 37) + 27) * 53) + getInternalListener().hashCode();
        }
        int hashCode3 = (d11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f48855d.d(Listener.class, c.class);
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
        return new Listener();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.address_ != null) {
            codedOutputStream.L0(2, getAddress());
        }
        for (int i9 = 0; i9 < this.filterChains_.size(); i9++) {
            codedOutputStream.L0(3, this.filterChains_.get(i9));
        }
        if (this.useOriginalDst_ != null) {
            codedOutputStream.L0(4, getUseOriginalDst());
        }
        if (this.perConnectionBufferLimitBytes_ != null) {
            codedOutputStream.L0(5, getPerConnectionBufferLimitBytes());
        }
        if (this.metadata_ != null) {
            codedOutputStream.L0(6, getMetadata());
        }
        if (this.deprecatedV1_ != null) {
            codedOutputStream.L0(7, getDeprecatedV1());
        }
        if (this.drainType_ != DrainType.DEFAULT.getNumber()) {
            codedOutputStream.v0(8, this.drainType_);
        }
        for (int i10 = 0; i10 < this.listenerFilters_.size(); i10++) {
            codedOutputStream.L0(9, this.listenerFilters_.get(i10));
        }
        if (this.transparent_ != null) {
            codedOutputStream.L0(10, getTransparent());
        }
        if (this.freebind_ != null) {
            codedOutputStream.L0(11, getFreebind());
        }
        if (this.tcpFastOpenQueueLength_ != null) {
            codedOutputStream.L0(12, getTcpFastOpenQueueLength());
        }
        for (int i11 = 0; i11 < this.socketOptions_.size(); i11++) {
            codedOutputStream.L0(13, this.socketOptions_.get(i11));
        }
        if (this.listenerFiltersTimeout_ != null) {
            codedOutputStream.L0(15, getListenerFiltersTimeout());
        }
        if (this.trafficDirection_ != TrafficDirection.UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(16, this.trafficDirection_);
        }
        boolean z10 = this.continueOnListenerFiltersTimeout_;
        if (z10) {
            codedOutputStream.n0(17, z10);
        }
        if (this.udpListenerConfig_ != null) {
            codedOutputStream.L0(18, getUdpListenerConfig());
        }
        if (this.apiListener_ != null) {
            codedOutputStream.L0(19, getApiListener());
        }
        if (this.connectionBalanceConfig_ != null) {
            codedOutputStream.L0(20, getConnectionBalanceConfig());
        }
        boolean z11 = this.reusePort_;
        if (z11) {
            codedOutputStream.n0(21, z11);
        }
        for (int i12 = 0; i12 < this.accessLog_.size(); i12++) {
            codedOutputStream.L0(22, this.accessLog_.get(i12));
        }
        if (this.tcpBacklogSize_ != null) {
            codedOutputStream.L0(24, getTcpBacklogSize());
        }
        if (this.defaultFilterChain_ != null) {
            codedOutputStream.L0(25, getDefaultFilterChain());
        }
        if (this.bindToPort_ != null) {
            codedOutputStream.L0(26, getBindToPort());
        }
        if (this.listenerSpecifierCase_ == 27) {
            codedOutputStream.L0(27, (InternalListenerConfig) this.listenerSpecifier_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.statPrefix_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 28, this.statPrefix_);
        }
        if (this.enableReusePort_ != null) {
            codedOutputStream.L0(29, getEnableReusePort());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Listener(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Listener listener) {
        return DEFAULT_INSTANCE.toBuilder().y0(listener);
    }

    public static Listener parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Listener(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.listenerSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Listener parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Listener) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Listener parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Listener getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).y0(this);
    }

    public static Listener parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static Listener parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private Listener() {
        this.listenerSpecifierCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.statPrefix_ = "";
        this.filterChains_ = Collections.emptyList();
        this.drainType_ = 0;
        this.listenerFilters_ = Collections.emptyList();
        this.socketOptions_ = Collections.emptyList();
        this.trafficDirection_ = 0;
        this.accessLog_ = Collections.emptyList();
    }

    public static Listener parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Listener parseFrom(InputStream inputStream) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Listener parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Listener parseFrom(p pVar) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Listener parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Listener(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            case 10:
                                this.name_ = pVar.K();
                                continue;
                            case 18:
                                Address address = this.address_;
                                Address.c builder = address != null ? address.toBuilder() : null;
                                Address address2 = (Address) pVar.B(Address.parser(), f0Var);
                                this.address_ = address2;
                                if (builder != null) {
                                    builder.h0(address2);
                                    this.address_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 26:
                                if (!(z11 & true)) {
                                    this.filterChains_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.filterChains_.add((FilterChain) pVar.B(FilterChain.parser(), f0Var));
                                continue;
                            case 34:
                                BoolValue boolValue = this.useOriginalDst_;
                                BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.useOriginalDst_ = boolValue2;
                                if (builder2 != null) {
                                    builder2.d0(boolValue2);
                                    this.useOriginalDst_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 42:
                                UInt32Value uInt32Value = this.perConnectionBufferLimitBytes_;
                                UInt32Value.b builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.perConnectionBufferLimitBytes_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.g0(uInt32Value2);
                                    this.perConnectionBufferLimitBytes_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 50:
                                Metadata metadata = this.metadata_;
                                Metadata.b builder4 = metadata != null ? metadata.toBuilder() : null;
                                Metadata metadata2 = (Metadata) pVar.B(Metadata.parser(), f0Var);
                                this.metadata_ = metadata2;
                                if (builder4 != null) {
                                    builder4.k0(metadata2);
                                    this.metadata_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 58:
                                DeprecatedV1 deprecatedV1 = this.deprecatedV1_;
                                DeprecatedV1.b builder5 = deprecatedV1 != null ? deprecatedV1.toBuilder() : null;
                                DeprecatedV1 deprecatedV12 = (DeprecatedV1) pVar.B(DeprecatedV1.parser(), f0Var);
                                this.deprecatedV1_ = deprecatedV12;
                                if (builder5 != null) {
                                    builder5.h0(deprecatedV12);
                                    this.deprecatedV1_ = builder5.I();
                                } else {
                                    continue;
                                }
                            case 64:
                                this.drainType_ = pVar.u();
                                continue;
                            case 74:
                                if (!(z11 & true)) {
                                    this.listenerFilters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.listenerFilters_.add((ListenerFilter) pVar.B(ListenerFilter.parser(), f0Var));
                                continue;
                            case 82:
                                BoolValue boolValue3 = this.transparent_;
                                BoolValue.b builder6 = boolValue3 != null ? boolValue3.toBuilder() : null;
                                BoolValue boolValue4 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.transparent_ = boolValue4;
                                if (builder6 != null) {
                                    builder6.d0(boolValue4);
                                    this.transparent_ = builder6.I();
                                } else {
                                    continue;
                                }
                            case 90:
                                BoolValue boolValue5 = this.freebind_;
                                BoolValue.b builder7 = boolValue5 != null ? boolValue5.toBuilder() : null;
                                BoolValue boolValue6 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.freebind_ = boolValue6;
                                if (builder7 != null) {
                                    builder7.d0(boolValue6);
                                    this.freebind_ = builder7.I();
                                } else {
                                    continue;
                                }
                            case 98:
                                UInt32Value uInt32Value3 = this.tcpFastOpenQueueLength_;
                                UInt32Value.b builder8 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.tcpFastOpenQueueLength_ = uInt32Value4;
                                if (builder8 != null) {
                                    builder8.g0(uInt32Value4);
                                    this.tcpFastOpenQueueLength_ = builder8.I();
                                } else {
                                    continue;
                                }
                            case 106:
                                if (!(z11 & true)) {
                                    this.socketOptions_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.socketOptions_.add((SocketOption) pVar.B(SocketOption.parser(), f0Var));
                                continue;
                            case 122:
                                Duration duration = this.listenerFiltersTimeout_;
                                Duration.b builder9 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.listenerFiltersTimeout_ = duration2;
                                if (builder9 != null) {
                                    builder9.e0(duration2);
                                    this.listenerFiltersTimeout_ = builder9.I();
                                } else {
                                    continue;
                                }
                            case 128:
                                this.trafficDirection_ = pVar.u();
                                continue;
                            case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                                this.continueOnListenerFiltersTimeout_ = pVar.r();
                                continue;
                            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                                UdpListenerConfig udpListenerConfig = this.udpListenerConfig_;
                                UdpListenerConfig.b builder10 = udpListenerConfig != null ? udpListenerConfig.toBuilder() : null;
                                UdpListenerConfig udpListenerConfig2 = (UdpListenerConfig) pVar.B(UdpListenerConfig.parser(), f0Var);
                                this.udpListenerConfig_ = udpListenerConfig2;
                                if (builder10 != null) {
                                    builder10.h0(udpListenerConfig2);
                                    this.udpListenerConfig_ = builder10.I();
                                } else {
                                    continue;
                                }
                            case 154:
                                ApiListener apiListener = this.apiListener_;
                                ApiListener.b builder11 = apiListener != null ? apiListener.toBuilder() : null;
                                ApiListener apiListener2 = (ApiListener) pVar.B(ApiListener.parser(), f0Var);
                                this.apiListener_ = apiListener2;
                                if (builder11 != null) {
                                    builder11.h0(apiListener2);
                                    this.apiListener_ = builder11.I();
                                } else {
                                    continue;
                                }
                            case 162:
                                ConnectionBalanceConfig connectionBalanceConfig = this.connectionBalanceConfig_;
                                ConnectionBalanceConfig.b builder12 = connectionBalanceConfig != null ? connectionBalanceConfig.toBuilder() : null;
                                ConnectionBalanceConfig connectionBalanceConfig2 = (ConnectionBalanceConfig) pVar.B(ConnectionBalanceConfig.parser(), f0Var);
                                this.connectionBalanceConfig_ = connectionBalanceConfig2;
                                if (builder12 != null) {
                                    builder12.h0(connectionBalanceConfig2);
                                    this.connectionBalanceConfig_ = builder12.I();
                                } else {
                                    continue;
                                }
                            case 168:
                                this.reusePort_ = pVar.r();
                                continue;
                            case EventTrackingUtils.EVENT_TRACKING_RESULT_CODE /* 178 */:
                                if (!(z11 & true)) {
                                    this.accessLog_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.accessLog_.add((AccessLog) pVar.B(AccessLog.parser(), f0Var));
                                continue;
                            case TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT /* 194 */:
                                UInt32Value uInt32Value5 = this.tcpBacklogSize_;
                                UInt32Value.b builder13 = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                                UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.tcpBacklogSize_ = uInt32Value6;
                                if (builder13 != null) {
                                    builder13.g0(uInt32Value6);
                                    this.tcpBacklogSize_ = builder13.I();
                                } else {
                                    continue;
                                }
                            case 202:
                                FilterChain filterChain = this.defaultFilterChain_;
                                FilterChain.b builder14 = filterChain != null ? filterChain.toBuilder() : null;
                                FilterChain filterChain2 = (FilterChain) pVar.B(FilterChain.parser(), f0Var);
                                this.defaultFilterChain_ = filterChain2;
                                if (builder14 != null) {
                                    builder14.j0(filterChain2);
                                    this.defaultFilterChain_ = builder14.I();
                                } else {
                                    continue;
                                }
                            case 210:
                                BoolValue boolValue7 = this.bindToPort_;
                                BoolValue.b builder15 = boolValue7 != null ? boolValue7.toBuilder() : null;
                                BoolValue boolValue8 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.bindToPort_ = boolValue8;
                                if (builder15 != null) {
                                    builder15.d0(boolValue8);
                                    this.bindToPort_ = builder15.I();
                                } else {
                                    continue;
                                }
                            case 218:
                                InternalListenerConfig.b builder16 = this.listenerSpecifierCase_ == 27 ? ((InternalListenerConfig) this.listenerSpecifier_).toBuilder() : null;
                                o1 B = pVar.B(InternalListenerConfig.parser(), f0Var);
                                this.listenerSpecifier_ = B;
                                if (builder16 != null) {
                                    builder16.g0((InternalListenerConfig) B);
                                    this.listenerSpecifier_ = builder16.I();
                                }
                                this.listenerSpecifierCase_ = 27;
                                continue;
                            case 226:
                                this.statPrefix_ = pVar.K();
                                continue;
                            case 234:
                                BoolValue boolValue9 = this.enableReusePort_;
                                BoolValue.b builder17 = boolValue9 != null ? boolValue9.toBuilder() : null;
                                BoolValue boolValue10 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                                this.enableReusePort_ = boolValue10;
                                if (builder17 != null) {
                                    builder17.d0(boolValue10);
                                    this.enableReusePort_ = builder17.I();
                                } else {
                                    continue;
                                }
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
                if (z11 & true) {
                    this.filterChains_ = Collections.unmodifiableList(this.filterChains_);
                }
                if (z11 & true) {
                    this.listenerFilters_ = Collections.unmodifiableList(this.listenerFilters_);
                }
                if (z11 & true) {
                    this.socketOptions_ = Collections.unmodifiableList(this.socketOptions_);
                }
                if (z11 & true) {
                    this.accessLog_ = Collections.unmodifiableList(this.accessLog_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
