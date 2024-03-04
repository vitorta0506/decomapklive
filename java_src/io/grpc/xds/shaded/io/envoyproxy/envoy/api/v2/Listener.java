package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.thumbplayer.api.TPOptionalID;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Address;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Metadata;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.SocketOption;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.TrafficDirection;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.o0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.FilterChain;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.ListenerFilter;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.UdpListenerConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.AccessLog;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.ApiListener;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Listener extends GeneratedMessageV3 implements r1 {
    public static final int ACCESS_LOG_FIELD_NUMBER = 22;
    public static final int ADDRESS_FIELD_NUMBER = 2;
    public static final int API_LISTENER_FIELD_NUMBER = 19;
    public static final int CONNECTION_BALANCE_CONFIG_FIELD_NUMBER = 20;
    public static final int CONTINUE_ON_LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER = 17;
    public static final int DEPRECATED_V1_FIELD_NUMBER = 7;
    public static final int DRAIN_TYPE_FIELD_NUMBER = 8;
    public static final int FILTER_CHAINS_FIELD_NUMBER = 3;
    public static final int FREEBIND_FIELD_NUMBER = 11;
    public static final int LISTENER_FILTERS_FIELD_NUMBER = 9;
    public static final int LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER = 15;
    public static final int METADATA_FIELD_NUMBER = 6;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER = 5;
    public static final int REUSE_PORT_FIELD_NUMBER = 21;
    public static final int SOCKET_OPTIONS_FIELD_NUMBER = 13;
    public static final int TCP_FAST_OPEN_QUEUE_LENGTH_FIELD_NUMBER = 12;
    public static final int TRAFFIC_DIRECTION_FIELD_NUMBER = 16;
    public static final int TRANSPARENT_FIELD_NUMBER = 10;
    public static final int UDP_LISTENER_CONFIG_FIELD_NUMBER = 18;
    public static final int USE_ORIGINAL_DST_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<AccessLog> accessLog_;
    private Address address_;
    private ApiListener apiListener_;
    private ConnectionBalanceConfig connectionBalanceConfig_;
    private boolean continueOnListenerFiltersTimeout_;
    private DeprecatedV1 deprecatedV1_;
    private int drainType_;
    private List<FilterChain> filterChains_;
    private BoolValue freebind_;
    private Duration listenerFiltersTimeout_;
    private List<ListenerFilter> listenerFilters_;
    private byte memoizedIsInitialized;
    private Metadata metadata_;
    private volatile Object name_;
    private UInt32Value perConnectionBufferLimitBytes_;
    private boolean reusePort_;
    private List<SocketOption> socketOptions_;
    private UInt32Value tcpFastOpenQueueLength_;
    private int trafficDirection_;
    private BoolValue transparent_;
    private UdpListenerConfig udpListenerConfig_;
    private BoolValue useOriginalDst_;
    private static final Listener DEFAULT_INSTANCE = new Listener();
    private static final e2<Listener> PARSER = new a();

    /* loaded from: classes5.dex */
    public static final class ConnectionBalanceConfig extends GeneratedMessageV3 implements d {
        public static final int EXACT_BALANCE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int balanceTypeCase_;
        private Object balanceType_;
        private byte memoizedIsInitialized;
        private static final ConnectionBalanceConfig DEFAULT_INSTANCE = new ConnectionBalanceConfig();
        private static final e2<ConnectionBalanceConfig> PARSER = new a();

        /* loaded from: classes5.dex */
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

        /* loaded from: classes5.dex */
        public static final class ExactBalance extends GeneratedMessageV3 implements c {
            private static final ExactBalance DEFAULT_INSTANCE = new ExactBalance();
            private static final e2<ExactBalance> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes5.dex */
            class a extends com.google.protobuf.c<ExactBalance> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public ExactBalance m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new ExactBalance(pVar, f0Var, null);
                }
            }

            /* loaded from: classes5.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return h.f46913h.d(ExactBalance.class, b.class);
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
                public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance.access$1300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig$ExactBalance r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig$ExactBalance r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig$ExactBalance$b");
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
                    return h.f46912g;
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

            /* synthetic */ ExactBalance(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static ExactBalance getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return h.f46912g;
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
                return h.f46913h.d(ExactBalance.class, b.class);
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

            private ExactBalance(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

            public static ExactBalance parseFrom(com.google.protobuf.p pVar) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static ExactBalance parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
                return (ExactBalance) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<ConnectionBalanceConfig> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ConnectionBalanceConfig m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ConnectionBalanceConfig(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f46068e;

            /* renamed from: f  reason: collision with root package name */
            private Object f46069f;

            /* renamed from: g  reason: collision with root package name */
            private q2<ExactBalance, ExactBalance.b, c> f46070g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.f46911f.d(ConnectionBalanceConfig.class, b.class);
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
                if (this.f46068e == 1) {
                    q2<ExactBalance, ExactBalance.b, c> q2Var = this.f46070g;
                    if (q2Var == null) {
                        connectionBalanceConfig.balanceType_ = this.f46069f;
                    } else {
                        connectionBalanceConfig.balanceType_ = q2Var.b();
                    }
                }
                connectionBalanceConfig.balanceTypeCase_ = this.f46068e;
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
                q2<ExactBalance, ExactBalance.b, c> q2Var = this.f46070g;
                if (q2Var == null) {
                    if (this.f46068e == 1 && this.f46069f != ExactBalance.getDefaultInstance()) {
                        this.f46069f = ExactBalance.newBuilder((ExactBalance) this.f46069f).g0(exactBalance).I();
                    } else {
                        this.f46069f = exactBalance;
                    }
                    R();
                } else {
                    if (this.f46068e == 1) {
                        q2Var.e(exactBalance);
                    }
                    this.f46070g.g(exactBalance);
                }
                this.f46068e = 1;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.ConnectionBalanceConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$ConnectionBalanceConfig$b");
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
                return h.f46910e;
            }

            public b h0(ConnectionBalanceConfig connectionBalanceConfig) {
                if (connectionBalanceConfig == ConnectionBalanceConfig.getDefaultInstance()) {
                    return this;
                }
                if (b.f46073a[connectionBalanceConfig.getBalanceTypeCase().ordinal()] == 1) {
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
                this.f46068e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f46068e = 0;
                b0();
            }
        }

        /* loaded from: classes5.dex */
        public interface c extends r1 {
        }

        /* synthetic */ ConnectionBalanceConfig(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ConnectionBalanceConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.f46910e;
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
            return h.f46911f.d(ConnectionBalanceConfig.class, b.class);
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

        private ConnectionBalanceConfig(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static ConnectionBalanceConfig parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ConnectionBalanceConfig parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (ConnectionBalanceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public static final class DeprecatedV1 extends GeneratedMessageV3 implements e {
        public static final int BIND_TO_PORT_FIELD_NUMBER = 1;
        private static final DeprecatedV1 DEFAULT_INSTANCE = new DeprecatedV1();
        private static final e2<DeprecatedV1> PARSER = new a();
        private static final long serialVersionUID = 0;
        private BoolValue bindToPort_;
        private byte memoizedIsInitialized;

        /* loaded from: classes5.dex */
        class a extends com.google.protobuf.c<DeprecatedV1> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public DeprecatedV1 m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new DeprecatedV1(pVar, f0Var, null);
            }
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private BoolValue f46071e;

            /* renamed from: f  reason: collision with root package name */
            private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46072f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return h.f46909d.d(DeprecatedV1.class, b.class);
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
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46072f;
                if (q2Var == null) {
                    deprecatedV1.bindToPort_ = this.f46071e;
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
                q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46072f;
                if (q2Var == null) {
                    BoolValue boolValue2 = this.f46071e;
                    if (boolValue2 != null) {
                        this.f46071e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                    } else {
                        this.f46071e = boolValue;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.DeprecatedV1.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.DeprecatedV1.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$DeprecatedV1 r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.DeprecatedV1) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$DeprecatedV1 r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.DeprecatedV1) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.DeprecatedV1.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$DeprecatedV1$b");
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
                return h.f46908c;
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

        /* synthetic */ DeprecatedV1(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static DeprecatedV1 getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return h.f46908c;
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
            return h.f46909d.d(DeprecatedV1.class, b.class);
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

        private DeprecatedV1(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static DeprecatedV1 parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static DeprecatedV1 parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (DeprecatedV1) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes5.dex */
    public enum DrainType implements h2 {
        DEFAULT(0),
        MODIFY_ONLY(1),
        UNRECOGNIZED(-1);
        
        public static final int DEFAULT_VALUE = 0;
        public static final int MODIFY_ONLY_VALUE = 1;
        private final int value;
        private static final u0.d<DrainType> internalValueMap = new a();
        private static final DrainType[] VALUES = values();

        /* loaded from: classes5.dex */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends com.google.protobuf.c<Listener> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Listener m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Listener(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f46073a;

        static {
            int[] iArr = new int[ConnectionBalanceConfig.BalanceTypeCase.values().length];
            f46073a = iArr;
            try {
                iArr[ConnectionBalanceConfig.BalanceTypeCase.EXACT_BALANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46073a[ConnectionBalanceConfig.BalanceTypeCase.BALANCETYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {
        private BoolValue A;
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> B;
        private List<SocketOption> C;
        private l2<SocketOption, SocketOption.c, o0> D;
        private UInt32Value E;
        private q2<UInt32Value, UInt32Value.b, e3> F;
        private int G;
        private UdpListenerConfig H;
        private q2<UdpListenerConfig, UdpListenerConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.g> I;
        private ApiListener J;
        private q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.a> K;
        private ConnectionBalanceConfig L;
        private q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> M;
        private boolean N;
        private List<AccessLog> O;
        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> P;

        /* renamed from: e  reason: collision with root package name */
        private int f46074e;

        /* renamed from: f  reason: collision with root package name */
        private Object f46075f;

        /* renamed from: g  reason: collision with root package name */
        private Address f46076g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> f46077h;

        /* renamed from: i  reason: collision with root package name */
        private List<FilterChain> f46078i;

        /* renamed from: j  reason: collision with root package name */
        private l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b> f46079j;

        /* renamed from: k  reason: collision with root package name */
        private BoolValue f46080k;

        /* renamed from: l  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46081l;

        /* renamed from: m  reason: collision with root package name */
        private UInt32Value f46082m;

        /* renamed from: n  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46083n;

        /* renamed from: o  reason: collision with root package name */
        private Metadata f46084o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Metadata, Metadata.b, d0> f46085p;

        /* renamed from: q  reason: collision with root package name */
        private DeprecatedV1 f46086q;

        /* renamed from: r  reason: collision with root package name */
        private q2<DeprecatedV1, DeprecatedV1.b, e> f46087r;

        /* renamed from: s  reason: collision with root package name */
        private int f46088s;

        /* renamed from: t  reason: collision with root package name */
        private List<ListenerFilter> f46089t;

        /* renamed from: u  reason: collision with root package name */
        private l2<ListenerFilter, ListenerFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.f> f46090u;

        /* renamed from: v  reason: collision with root package name */
        private Duration f46091v;

        /* renamed from: w  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f46092w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f46093x;

        /* renamed from: y  reason: collision with root package name */
        private BoolValue f46094y;

        /* renamed from: z  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f46095z;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f46074e & 8) == 0) {
                this.O = new ArrayList(this.O);
                this.f46074e |= 8;
            }
        }

        private void b0() {
            if ((this.f46074e & 1) == 0) {
                this.f46078i = new ArrayList(this.f46078i);
                this.f46074e |= 1;
            }
        }

        private void d0() {
            if ((this.f46074e & 2) == 0) {
                this.f46089t = new ArrayList(this.f46089t);
                this.f46074e |= 2;
            }
        }

        private void e0() {
            if ((this.f46074e & 4) == 0) {
                this.C = new ArrayList(this.C);
                this.f46074e |= 4;
            }
        }

        private l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> g0() {
            if (this.P == null) {
                this.P = new l2<>(this.O, (this.f46074e & 8) != 0, H(), O());
                this.O = null;
            }
            return this.P;
        }

        private l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b> i0() {
            if (this.f46079j == null) {
                this.f46079j = new l2<>(this.f46078i, (this.f46074e & 1) != 0, H(), O());
                this.f46078i = null;
            }
            return this.f46079j;
        }

        private l2<ListenerFilter, ListenerFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.f> j0() {
            if (this.f46090u == null) {
                this.f46090u = new l2<>(this.f46089t, (this.f46074e & 2) != 0, H(), O());
                this.f46089t = null;
            }
            return this.f46090u;
        }

        private l2<SocketOption, SocketOption.c, o0> k0() {
            if (this.D == null) {
                this.D = new l2<>(this.C, (this.f46074e & 4) != 0, H(), O());
                this.C = null;
            }
            return this.D;
        }

        private void l0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                i0();
                j0();
                k0();
                g0();
            }
        }

        public c B0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46095z;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46094y;
                if (boolValue2 != null) {
                    this.f46094y = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46094y = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c D0(UdpListenerConfig udpListenerConfig) {
            q2<UdpListenerConfig, UdpListenerConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.g> q2Var = this.I;
            if (q2Var == null) {
                UdpListenerConfig udpListenerConfig2 = this.H;
                if (udpListenerConfig2 != null) {
                    this.H = UdpListenerConfig.newBuilder(udpListenerConfig2).h0(udpListenerConfig).I();
                } else {
                    this.H = udpListenerConfig;
                }
                R();
            } else {
                q2Var.e(udpListenerConfig);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: H0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Deprecated
        public c I0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f46081l;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f46080k;
                if (boolValue2 != null) {
                    this.f46080k = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f46080k = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public c J0(boolean z10) {
            this.f46093x = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h.f46907b.d(Listener.class, c.class);
        }

        public c K0(int i9) {
            this.f46088s = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: L0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c M0(boolean z10) {
            this.N = z10;
            R();
            return this;
        }

        public c N0(int i9) {
            this.G = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: O0 */
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
            listener.name_ = this.f46075f;
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> q2Var = this.f46077h;
            if (q2Var == null) {
                listener.address_ = this.f46076g;
            } else {
                listener.address_ = q2Var.b();
            }
            l2<FilterChain, FilterChain.b, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b> l2Var = this.f46079j;
            if (l2Var == null) {
                if ((this.f46074e & 1) != 0) {
                    this.f46078i = Collections.unmodifiableList(this.f46078i);
                    this.f46074e &= -2;
                }
                listener.filterChains_ = this.f46078i;
            } else {
                listener.filterChains_ = l2Var.e();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f46081l;
            if (q2Var2 == null) {
                listener.useOriginalDst_ = this.f46080k;
            } else {
                listener.useOriginalDst_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f46083n;
            if (q2Var3 == null) {
                listener.perConnectionBufferLimitBytes_ = this.f46082m;
            } else {
                listener.perConnectionBufferLimitBytes_ = q2Var3.b();
            }
            q2<Metadata, Metadata.b, d0> q2Var4 = this.f46085p;
            if (q2Var4 == null) {
                listener.metadata_ = this.f46084o;
            } else {
                listener.metadata_ = q2Var4.b();
            }
            q2<DeprecatedV1, DeprecatedV1.b, e> q2Var5 = this.f46087r;
            if (q2Var5 == null) {
                listener.deprecatedV1_ = this.f46086q;
            } else {
                listener.deprecatedV1_ = q2Var5.b();
            }
            listener.drainType_ = this.f46088s;
            l2<ListenerFilter, ListenerFilter.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.f> l2Var2 = this.f46090u;
            if (l2Var2 == null) {
                if ((this.f46074e & 2) != 0) {
                    this.f46089t = Collections.unmodifiableList(this.f46089t);
                    this.f46074e &= -3;
                }
                listener.listenerFilters_ = this.f46089t;
            } else {
                listener.listenerFilters_ = l2Var2.e();
            }
            q2<Duration, Duration.b, v> q2Var6 = this.f46092w;
            if (q2Var6 == null) {
                listener.listenerFiltersTimeout_ = this.f46091v;
            } else {
                listener.listenerFiltersTimeout_ = q2Var6.b();
            }
            listener.continueOnListenerFiltersTimeout_ = this.f46093x;
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var7 = this.f46095z;
            if (q2Var7 == null) {
                listener.transparent_ = this.f46094y;
            } else {
                listener.transparent_ = q2Var7.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var8 = this.B;
            if (q2Var8 == null) {
                listener.freebind_ = this.A;
            } else {
                listener.freebind_ = q2Var8.b();
            }
            l2<SocketOption, SocketOption.c, o0> l2Var3 = this.D;
            if (l2Var3 == null) {
                if ((this.f46074e & 4) != 0) {
                    this.C = Collections.unmodifiableList(this.C);
                    this.f46074e &= -5;
                }
                listener.socketOptions_ = this.C;
            } else {
                listener.socketOptions_ = l2Var3.e();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var9 = this.F;
            if (q2Var9 == null) {
                listener.tcpFastOpenQueueLength_ = this.E;
            } else {
                listener.tcpFastOpenQueueLength_ = q2Var9.b();
            }
            listener.trafficDirection_ = this.G;
            q2<UdpListenerConfig, UdpListenerConfig.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.g> q2Var10 = this.I;
            if (q2Var10 == null) {
                listener.udpListenerConfig_ = this.H;
            } else {
                listener.udpListenerConfig_ = q2Var10.b();
            }
            q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.a> q2Var11 = this.K;
            if (q2Var11 == null) {
                listener.apiListener_ = this.J;
            } else {
                listener.apiListener_ = q2Var11.b();
            }
            q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> q2Var12 = this.M;
            if (q2Var12 == null) {
                listener.connectionBalanceConfig_ = this.L;
            } else {
                listener.connectionBalanceConfig_ = q2Var12.b();
            }
            listener.reusePort_ = this.N;
            l2<AccessLog, AccessLog.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> l2Var4 = this.P;
            if (l2Var4 == null) {
                if ((this.f46074e & 8) != 0) {
                    this.O = Collections.unmodifiableList(this.O);
                    this.f46074e &= -9;
                }
                listener.accessLog_ = this.O;
            } else {
                listener.accessLog_ = l2Var4.e();
            }
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
            return h.f46906a;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: h0 */
        public Listener getDefaultInstanceForType() {
            return Listener.getDefaultInstance();
        }

        public c m0(Address address) {
            q2<Address, Address.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a> q2Var = this.f46077h;
            if (q2Var == null) {
                Address address2 = this.f46076g;
                if (address2 != null) {
                    this.f46076g = Address.newBuilder(address2).g0(address).I();
                } else {
                    this.f46076g = address;
                }
                R();
            } else {
                q2Var.e(address);
            }
            return this;
        }

        public c n0(ApiListener apiListener) {
            q2<ApiListener, ApiListener.b, io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.a> q2Var = this.K;
            if (q2Var == null) {
                ApiListener apiListener2 = this.J;
                if (apiListener2 != null) {
                    this.J = ApiListener.newBuilder(apiListener2).h0(apiListener).I();
                } else {
                    this.J = apiListener;
                }
                R();
            } else {
                q2Var.e(apiListener);
            }
            return this;
        }

        public c o0(ConnectionBalanceConfig connectionBalanceConfig) {
            q2<ConnectionBalanceConfig, ConnectionBalanceConfig.b, d> q2Var = this.M;
            if (q2Var == null) {
                ConnectionBalanceConfig connectionBalanceConfig2 = this.L;
                if (connectionBalanceConfig2 != null) {
                    this.L = ConnectionBalanceConfig.newBuilder(connectionBalanceConfig2).h0(connectionBalanceConfig).I();
                } else {
                    this.L = connectionBalanceConfig;
                }
                R();
            } else {
                q2Var.e(connectionBalanceConfig);
            }
            return this;
        }

        public c q0(DeprecatedV1 deprecatedV1) {
            q2<DeprecatedV1, DeprecatedV1.b, e> q2Var = this.f46087r;
            if (q2Var == null) {
                DeprecatedV1 deprecatedV12 = this.f46086q;
                if (deprecatedV12 != null) {
                    this.f46086q = DeprecatedV1.newBuilder(deprecatedV12).h0(deprecatedV1).I();
                } else {
                    this.f46086q = deprecatedV1;
                }
                R();
            } else {
                q2Var.e(deprecatedV1);
            }
            return this;
        }

        public c r0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.B;
            if (q2Var == null) {
                BoolValue boolValue2 = this.A;
                if (boolValue2 != null) {
                    this.A = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.A = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: s0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.access$5400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.u0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.u0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.Listener$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof Listener) {
                return u0((Listener) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c u0(Listener listener) {
            if (listener == Listener.getDefaultInstance()) {
                return this;
            }
            if (!listener.getName().isEmpty()) {
                this.f46075f = listener.name_;
                R();
            }
            if (listener.hasAddress()) {
                m0(listener.getAddress());
            }
            if (this.f46079j == null) {
                if (!listener.filterChains_.isEmpty()) {
                    if (this.f46078i.isEmpty()) {
                        this.f46078i = listener.filterChains_;
                        this.f46074e &= -2;
                    } else {
                        b0();
                        this.f46078i.addAll(listener.filterChains_);
                    }
                    R();
                }
            } else if (!listener.filterChains_.isEmpty()) {
                if (this.f46079j.k()) {
                    this.f46079j.f();
                    this.f46079j = null;
                    this.f46078i = listener.filterChains_;
                    this.f46074e &= -2;
                    this.f46079j = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f46079j.b(listener.filterChains_);
                }
            }
            if (listener.hasUseOriginalDst()) {
                I0(listener.getUseOriginalDst());
            }
            if (listener.hasPerConnectionBufferLimitBytes()) {
                y0(listener.getPerConnectionBufferLimitBytes());
            }
            if (listener.hasMetadata()) {
                x0(listener.getMetadata());
            }
            if (listener.hasDeprecatedV1()) {
                q0(listener.getDeprecatedV1());
            }
            if (listener.drainType_ != 0) {
                K0(listener.getDrainTypeValue());
            }
            if (this.f46090u == null) {
                if (!listener.listenerFilters_.isEmpty()) {
                    if (this.f46089t.isEmpty()) {
                        this.f46089t = listener.listenerFilters_;
                        this.f46074e &= -3;
                    } else {
                        d0();
                        this.f46089t.addAll(listener.listenerFilters_);
                    }
                    R();
                }
            } else if (!listener.listenerFilters_.isEmpty()) {
                if (this.f46090u.k()) {
                    this.f46090u.f();
                    this.f46090u = null;
                    this.f46089t = listener.listenerFilters_;
                    this.f46074e &= -3;
                    this.f46090u = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f46090u.b(listener.listenerFilters_);
                }
            }
            if (listener.hasListenerFiltersTimeout()) {
                v0(listener.getListenerFiltersTimeout());
            }
            if (listener.getContinueOnListenerFiltersTimeout()) {
                J0(listener.getContinueOnListenerFiltersTimeout());
            }
            if (listener.hasTransparent()) {
                B0(listener.getTransparent());
            }
            if (listener.hasFreebind()) {
                r0(listener.getFreebind());
            }
            if (this.D == null) {
                if (!listener.socketOptions_.isEmpty()) {
                    if (this.C.isEmpty()) {
                        this.C = listener.socketOptions_;
                        this.f46074e &= -5;
                    } else {
                        e0();
                        this.C.addAll(listener.socketOptions_);
                    }
                    R();
                }
            } else if (!listener.socketOptions_.isEmpty()) {
                if (this.D.k()) {
                    this.D.f();
                    this.D = null;
                    this.C = listener.socketOptions_;
                    this.f46074e &= -5;
                    this.D = GeneratedMessageV3.alwaysUseFieldBuilders ? k0() : null;
                } else {
                    this.D.b(listener.socketOptions_);
                }
            }
            if (listener.hasTcpFastOpenQueueLength()) {
                z0(listener.getTcpFastOpenQueueLength());
            }
            if (listener.trafficDirection_ != 0) {
                N0(listener.getTrafficDirectionValue());
            }
            if (listener.hasUdpListenerConfig()) {
                D0(listener.getUdpListenerConfig());
            }
            if (listener.hasApiListener()) {
                n0(listener.getApiListener());
            }
            if (listener.hasConnectionBalanceConfig()) {
                o0(listener.getConnectionBalanceConfig());
            }
            if (listener.getReusePort()) {
                M0(listener.getReusePort());
            }
            if (this.P == null) {
                if (!listener.accessLog_.isEmpty()) {
                    if (this.O.isEmpty()) {
                        this.O = listener.accessLog_;
                        this.f46074e &= -9;
                    } else {
                        a0();
                        this.O.addAll(listener.accessLog_);
                    }
                    R();
                }
            } else if (!listener.accessLog_.isEmpty()) {
                if (this.P.k()) {
                    this.P.f();
                    this.P = null;
                    this.O = listener.accessLog_;
                    this.f46074e &= -9;
                    this.P = GeneratedMessageV3.alwaysUseFieldBuilders ? g0() : null;
                } else {
                    this.P.b(listener.accessLog_);
                }
            }
            z(((GeneratedMessageV3) listener).unknownFields);
            R();
            return this;
        }

        public c v0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f46092w;
            if (q2Var == null) {
                Duration duration2 = this.f46091v;
                if (duration2 != null) {
                    this.f46091v = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46091v = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c x0(Metadata metadata) {
            q2<Metadata, Metadata.b, d0> q2Var = this.f46085p;
            if (q2Var == null) {
                Metadata metadata2 = this.f46084o;
                if (metadata2 != null) {
                    this.f46084o = Metadata.newBuilder(metadata2).i0(metadata).I();
                } else {
                    this.f46084o = metadata;
                }
                R();
            } else {
                q2Var.e(metadata);
            }
            return this;
        }

        public c y0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46083n;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46082m;
                if (uInt32Value2 != null) {
                    this.f46082m = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46082m = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c z0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.F;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.E;
                if (uInt32Value2 != null) {
                    this.E = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.E = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f46075f = "";
            this.f46078i = Collections.emptyList();
            this.f46088s = 0;
            this.f46089t = Collections.emptyList();
            this.C = Collections.emptyList();
            this.G = 0;
            this.O = Collections.emptyList();
            l0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46075f = "";
            this.f46078i = Collections.emptyList();
            this.f46088s = 0;
            this.f46089t = Collections.emptyList();
            this.C = Collections.emptyList();
            this.G = 0;
            this.O = Collections.emptyList();
            l0();
        }
    }

    /* loaded from: classes5.dex */
    public interface d extends r1 {
    }

    /* loaded from: classes5.dex */
    public interface e extends r1 {
    }

    /* synthetic */ Listener(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Listener getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h.f46906a;
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
            if ((!hasAddress() || getAddress().equals(listener.getAddress())) && getFilterChainsList().equals(listener.getFilterChainsList()) && hasUseOriginalDst() == listener.hasUseOriginalDst()) {
                if ((!hasUseOriginalDst() || getUseOriginalDst().equals(listener.getUseOriginalDst())) && hasPerConnectionBufferLimitBytes() == listener.hasPerConnectionBufferLimitBytes()) {
                    if ((!hasPerConnectionBufferLimitBytes() || getPerConnectionBufferLimitBytes().equals(listener.getPerConnectionBufferLimitBytes())) && hasMetadata() == listener.hasMetadata()) {
                        if ((!hasMetadata() || getMetadata().equals(listener.getMetadata())) && hasDeprecatedV1() == listener.hasDeprecatedV1()) {
                            if ((!hasDeprecatedV1() || getDeprecatedV1().equals(listener.getDeprecatedV1())) && this.drainType_ == listener.drainType_ && getListenerFiltersList().equals(listener.getListenerFiltersList()) && hasListenerFiltersTimeout() == listener.hasListenerFiltersTimeout()) {
                                if ((!hasListenerFiltersTimeout() || getListenerFiltersTimeout().equals(listener.getListenerFiltersTimeout())) && getContinueOnListenerFiltersTimeout() == listener.getContinueOnListenerFiltersTimeout() && hasTransparent() == listener.hasTransparent()) {
                                    if ((!hasTransparent() || getTransparent().equals(listener.getTransparent())) && hasFreebind() == listener.hasFreebind()) {
                                        if ((!hasFreebind() || getFreebind().equals(listener.getFreebind())) && getSocketOptionsList().equals(listener.getSocketOptionsList()) && hasTcpFastOpenQueueLength() == listener.hasTcpFastOpenQueueLength()) {
                                            if ((!hasTcpFastOpenQueueLength() || getTcpFastOpenQueueLength().equals(listener.getTcpFastOpenQueueLength())) && this.trafficDirection_ == listener.trafficDirection_ && hasUdpListenerConfig() == listener.hasUdpListenerConfig()) {
                                                if ((!hasUdpListenerConfig() || getUdpListenerConfig().equals(listener.getUdpListenerConfig())) && hasApiListener() == listener.hasApiListener()) {
                                                    if ((!hasApiListener() || getApiListener().equals(listener.getApiListener())) && hasConnectionBalanceConfig() == listener.hasConnectionBalanceConfig()) {
                                                        return (!hasConnectionBalanceConfig() || getConnectionBalanceConfig().equals(listener.getConnectionBalanceConfig())) && getReusePort() == listener.getReusePort() && getAccessLogList().equals(listener.getAccessLogList()) && this.unknownFields.equals(listener.unknownFields);
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b getAccessLogOrBuilder(int i9) {
        return this.accessLog_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.b> getAccessLogOrBuilderList() {
        return this.accessLog_;
    }

    public Address getAddress() {
        Address address = this.address_;
        return address == null ? Address.getDefaultInstance() : address;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.a getAddressOrBuilder() {
        return getAddress();
    }

    public ApiListener getApiListener() {
        ApiListener apiListener = this.apiListener_;
        return apiListener == null ? ApiListener.getDefaultInstance() : apiListener;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.a getApiListenerOrBuilder() {
        return getApiListener();
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

    public DeprecatedV1 getDeprecatedV1() {
        DeprecatedV1 deprecatedV1 = this.deprecatedV1_;
        return deprecatedV1 == null ? DeprecatedV1.getDefaultInstance() : deprecatedV1;
    }

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

    public FilterChain getFilterChains(int i9) {
        return this.filterChains_.get(i9);
    }

    public int getFilterChainsCount() {
        return this.filterChains_.size();
    }

    public List<FilterChain> getFilterChainsList() {
        return this.filterChains_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b getFilterChainsOrBuilder(int i9) {
        return this.filterChains_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.b> getFilterChainsOrBuilderList() {
        return this.filterChains_;
    }

    public BoolValue getFreebind() {
        BoolValue boolValue = this.freebind_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getFreebindOrBuilder() {
        return getFreebind();
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.f getListenerFiltersOrBuilder(int i9) {
        return this.listenerFilters_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.f> getListenerFiltersOrBuilderList() {
        return this.listenerFilters_;
    }

    public Duration getListenerFiltersTimeout() {
        Duration duration = this.listenerFiltersTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getListenerFiltersTimeoutOrBuilder() {
        return getListenerFiltersTimeout();
    }

    public Metadata getMetadata() {
        Metadata metadata = this.metadata_;
        return metadata == null ? Metadata.getDefaultInstance() : metadata;
    }

    public d0 getMetadataOrBuilder() {
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

    public o0 getSocketOptionsOrBuilder(int i9) {
        return this.socketOptions_.get(i9);
    }

    public List<? extends o0> getSocketOptionsOrBuilderList() {
        return this.socketOptions_;
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.g getUdpListenerConfigOrBuilder() {
        return getUdpListenerConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Deprecated
    public BoolValue getUseOriginalDst() {
        BoolValue boolValue = this.useOriginalDst_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    @Deprecated
    public com.google.protobuf.l getUseOriginalDstOrBuilder() {
        return getUseOriginalDst();
    }

    public boolean hasAddress() {
        return this.address_ != null;
    }

    public boolean hasApiListener() {
        return this.apiListener_ != null;
    }

    public boolean hasConnectionBalanceConfig() {
        return this.connectionBalanceConfig_ != null;
    }

    public boolean hasDeprecatedV1() {
        return this.deprecatedV1_ != null;
    }

    public boolean hasFreebind() {
        return this.freebind_ != null;
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

    public boolean hasTcpFastOpenQueueLength() {
        return this.tcpFastOpenQueueLength_ != null;
    }

    public boolean hasTransparent() {
        return this.transparent_ != null;
    }

    public boolean hasUdpListenerConfig() {
        return this.udpListenerConfig_ != null;
    }

    @Deprecated
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
        if (getFilterChainsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getFilterChainsList().hashCode();
        }
        if (hasUseOriginalDst()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getUseOriginalDst().hashCode();
        }
        if (hasPerConnectionBufferLimitBytes()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getPerConnectionBufferLimitBytes().hashCode();
        }
        if (hasMetadata()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getMetadata().hashCode();
        }
        if (hasDeprecatedV1()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getDeprecatedV1().hashCode();
        }
        int i10 = (((hashCode * 37) + 8) * 53) + this.drainType_;
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
        if (getAccessLogCount() > 0) {
            d11 = (((d11 * 37) + 22) * 53) + getAccessLogList().hashCode();
        }
        int hashCode2 = (d11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h.f46907b.d(Listener.class, c.class);
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
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Listener(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(Listener listener) {
        return DEFAULT_INSTANCE.toBuilder().u0(listener);
    }

    public static Listener parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Listener(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
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
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).u0(this);
    }

    public static Listener parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private Listener() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.filterChains_ = Collections.emptyList();
        this.drainType_ = 0;
        this.listenerFilters_ = Collections.emptyList();
        this.socketOptions_ = Collections.emptyList();
        this.trafficDirection_ = 0;
        this.accessLog_ = Collections.emptyList();
    }

    public static Listener parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
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

    public static Listener parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Listener parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (Listener) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private Listener(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
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
                                builder.g0(address2);
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
                                builder4.i0(metadata2);
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
                            UdpListenerConfig.c builder10 = udpListenerConfig != null ? udpListenerConfig.toBuilder() : null;
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
