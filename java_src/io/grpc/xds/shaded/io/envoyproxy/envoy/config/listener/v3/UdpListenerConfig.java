package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UdpSocketConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.j1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UdpListenerConfig extends GeneratedMessageV3 implements m {
    public static final int DOWNSTREAM_SOCKET_CONFIG_FIELD_NUMBER = 5;
    public static final int QUIC_OPTIONS_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private UdpSocketConfig downstreamSocketConfig_;
    private byte memoizedIsInitialized;
    private QuicProtocolOptions quicOptions_;
    private static final UdpListenerConfig DEFAULT_INSTANCE = new UdpListenerConfig();
    private static final e2<UdpListenerConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<UdpListenerConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UdpListenerConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UdpListenerConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements m {

        /* renamed from: e  reason: collision with root package name */
        private UdpSocketConfig f48830e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UdpSocketConfig, UdpSocketConfig.b, j1> f48831f;

        /* renamed from: g  reason: collision with root package name */
        private QuicProtocolOptions f48832g;

        /* renamed from: h  reason: collision with root package name */
        private q2<QuicProtocolOptions, QuicProtocolOptions.b, l> f48833h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n.f48869b.d(UdpListenerConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UdpListenerConfig build() {
            UdpListenerConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UdpListenerConfig I() {
            UdpListenerConfig udpListenerConfig = new UdpListenerConfig(this, (a) null);
            q2<UdpSocketConfig, UdpSocketConfig.b, j1> q2Var = this.f48831f;
            if (q2Var == null) {
                udpListenerConfig.downstreamSocketConfig_ = this.f48830e;
            } else {
                udpListenerConfig.downstreamSocketConfig_ = q2Var.b();
            }
            q2<QuicProtocolOptions, QuicProtocolOptions.b, l> q2Var2 = this.f48833h;
            if (q2Var2 == null) {
                udpListenerConfig.quicOptions_ = this.f48832g;
            } else {
                udpListenerConfig.quicOptions_ = q2Var2.b();
            }
            Q();
            return udpListenerConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UdpListenerConfig getDefaultInstanceForType() {
            return UdpListenerConfig.getDefaultInstance();
        }

        public b d0(UdpSocketConfig udpSocketConfig) {
            q2<UdpSocketConfig, UdpSocketConfig.b, j1> q2Var = this.f48831f;
            if (q2Var == null) {
                UdpSocketConfig udpSocketConfig2 = this.f48830e;
                if (udpSocketConfig2 != null) {
                    this.f48830e = UdpSocketConfig.newBuilder(udpSocketConfig2).g0(udpSocketConfig).I();
                } else {
                    this.f48830e = udpSocketConfig;
                }
                R();
            } else {
                q2Var.e(udpSocketConfig);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.UdpListenerConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UdpListenerConfig) {
                return h0((UdpListenerConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n.f48868a;
        }

        public b h0(UdpListenerConfig udpListenerConfig) {
            if (udpListenerConfig == UdpListenerConfig.getDefaultInstance()) {
                return this;
            }
            if (udpListenerConfig.hasDownstreamSocketConfig()) {
                d0(udpListenerConfig.getDownstreamSocketConfig());
            }
            if (udpListenerConfig.hasQuicOptions()) {
                i0(udpListenerConfig.getQuicOptions());
            }
            z(((GeneratedMessageV3) udpListenerConfig).unknownFields);
            R();
            return this;
        }

        public b i0(QuicProtocolOptions quicProtocolOptions) {
            q2<QuicProtocolOptions, QuicProtocolOptions.b, l> q2Var = this.f48833h;
            if (q2Var == null) {
                QuicProtocolOptions quicProtocolOptions2 = this.f48832g;
                if (quicProtocolOptions2 != null) {
                    this.f48832g = QuicProtocolOptions.newBuilder(quicProtocolOptions2).j0(quicProtocolOptions).I();
                } else {
                    this.f48832g = quicProtocolOptions;
                }
                R();
            } else {
                q2Var.e(quicProtocolOptions);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ UdpListenerConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UdpListenerConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n.f48868a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UdpListenerConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UdpListenerConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UdpListenerConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UdpListenerConfig)) {
            return super.equals(obj);
        }
        UdpListenerConfig udpListenerConfig = (UdpListenerConfig) obj;
        if (hasDownstreamSocketConfig() != udpListenerConfig.hasDownstreamSocketConfig()) {
            return false;
        }
        if ((!hasDownstreamSocketConfig() || getDownstreamSocketConfig().equals(udpListenerConfig.getDownstreamSocketConfig())) && hasQuicOptions() == udpListenerConfig.hasQuicOptions()) {
            return (!hasQuicOptions() || getQuicOptions().equals(udpListenerConfig.getQuicOptions())) && this.unknownFields.equals(udpListenerConfig.unknownFields);
        }
        return false;
    }

    public UdpSocketConfig getDownstreamSocketConfig() {
        UdpSocketConfig udpSocketConfig = this.downstreamSocketConfig_;
        return udpSocketConfig == null ? UdpSocketConfig.getDefaultInstance() : udpSocketConfig;
    }

    public j1 getDownstreamSocketConfigOrBuilder() {
        return getDownstreamSocketConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UdpListenerConfig> getParserForType() {
        return PARSER;
    }

    public QuicProtocolOptions getQuicOptions() {
        QuicProtocolOptions quicProtocolOptions = this.quicOptions_;
        return quicProtocolOptions == null ? QuicProtocolOptions.getDefaultInstance() : quicProtocolOptions;
    }

    public l getQuicOptionsOrBuilder() {
        return getQuicOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.downstreamSocketConfig_ != null ? 0 + CodedOutputStream.G(5, getDownstreamSocketConfig()) : 0;
        if (this.quicOptions_ != null) {
            G += CodedOutputStream.G(7, getQuicOptions());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDownstreamSocketConfig() {
        return this.downstreamSocketConfig_ != null;
    }

    public boolean hasQuicOptions() {
        return this.quicOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasDownstreamSocketConfig()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getDownstreamSocketConfig().hashCode();
        }
        if (hasQuicOptions()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getQuicOptions().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n.f48869b.d(UdpListenerConfig.class, b.class);
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
        return new UdpListenerConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.downstreamSocketConfig_ != null) {
            codedOutputStream.L0(5, getDownstreamSocketConfig());
        }
        if (this.quicOptions_ != null) {
            codedOutputStream.L0(7, getQuicOptions());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UdpListenerConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UdpListenerConfig udpListenerConfig) {
        return DEFAULT_INSTANCE.toBuilder().h0(udpListenerConfig);
    }

    public static UdpListenerConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UdpListenerConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UdpListenerConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UdpListenerConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UdpListenerConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static UdpListenerConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UdpListenerConfig() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UdpListenerConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UdpListenerConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UdpListenerConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 42) {
                            UdpSocketConfig udpSocketConfig = this.downstreamSocketConfig_;
                            UdpSocketConfig.b builder = udpSocketConfig != null ? udpSocketConfig.toBuilder() : null;
                            UdpSocketConfig udpSocketConfig2 = (UdpSocketConfig) pVar.B(UdpSocketConfig.parser(), f0Var);
                            this.downstreamSocketConfig_ = udpSocketConfig2;
                            if (builder != null) {
                                builder.g0(udpSocketConfig2);
                                this.downstreamSocketConfig_ = builder.I();
                            }
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            QuicProtocolOptions quicProtocolOptions = this.quicOptions_;
                            QuicProtocolOptions.b builder2 = quicProtocolOptions != null ? quicProtocolOptions.toBuilder() : null;
                            QuicProtocolOptions quicProtocolOptions2 = (QuicProtocolOptions) pVar.B(QuicProtocolOptions.parser(), f0Var);
                            this.quicOptions_ = quicProtocolOptions2;
                            if (builder2 != null) {
                                builder2.j0(quicProtocolOptions2);
                                this.quicOptions_ = builder2.I();
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

    public static UdpListenerConfig parseFrom(InputStream inputStream) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UdpListenerConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UdpListenerConfig parseFrom(p pVar) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UdpListenerConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UdpListenerConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
