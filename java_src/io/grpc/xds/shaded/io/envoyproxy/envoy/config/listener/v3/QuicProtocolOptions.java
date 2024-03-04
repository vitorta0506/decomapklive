package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

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
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.q0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.w0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class QuicProtocolOptions extends GeneratedMessageV3 implements l {
    public static final int CRYPTO_HANDSHAKE_TIMEOUT_FIELD_NUMBER = 3;
    public static final int CRYPTO_STREAM_CONFIG_FIELD_NUMBER = 6;
    public static final int ENABLED_FIELD_NUMBER = 4;
    public static final int IDLE_TIMEOUT_FIELD_NUMBER = 2;
    public static final int PACKETS_TO_READ_TO_CONNECTION_COUNT_RATIO_FIELD_NUMBER = 5;
    public static final int PROOF_SOURCE_CONFIG_FIELD_NUMBER = 7;
    public static final int QUIC_PROTOCOL_OPTIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Duration cryptoHandshakeTimeout_;
    private TypedExtensionConfig cryptoStreamConfig_;
    private RuntimeFeatureFlag enabled_;
    private Duration idleTimeout_;
    private byte memoizedIsInitialized;
    private UInt32Value packetsToReadToConnectionCountRatio_;
    private TypedExtensionConfig proofSourceConfig_;
    private io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions_;
    private static final QuicProtocolOptions DEFAULT_INSTANCE = new QuicProtocolOptions();
    private static final e2<QuicProtocolOptions> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<QuicProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public QuicProtocolOptions m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new QuicProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l {

        /* renamed from: e  reason: collision with root package name */
        private io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions f48816e;

        /* renamed from: f  reason: collision with root package name */
        private q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions, QuicProtocolOptions.b, q0> f48817f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f48818g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f48819h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f48820i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f48821j;

        /* renamed from: k  reason: collision with root package name */
        private RuntimeFeatureFlag f48822k;

        /* renamed from: l  reason: collision with root package name */
        private q2<RuntimeFeatureFlag, RuntimeFeatureFlag.b, w0> f48823l;

        /* renamed from: m  reason: collision with root package name */
        private UInt32Value f48824m;

        /* renamed from: n  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48825n;

        /* renamed from: o  reason: collision with root package name */
        private TypedExtensionConfig f48826o;

        /* renamed from: p  reason: collision with root package name */
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f48827p;

        /* renamed from: q  reason: collision with root package name */
        private TypedExtensionConfig f48828q;

        /* renamed from: r  reason: collision with root package name */
        private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f48829r;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return k.f48866b.d(QuicProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public QuicProtocolOptions build() {
            QuicProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public QuicProtocolOptions I() {
            QuicProtocolOptions quicProtocolOptions = new QuicProtocolOptions(this, (a) null);
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions, QuicProtocolOptions.b, q0> q2Var = this.f48817f;
            if (q2Var == null) {
                quicProtocolOptions.quicProtocolOptions_ = this.f48816e;
            } else {
                quicProtocolOptions.quicProtocolOptions_ = q2Var.b();
            }
            q2<Duration, Duration.b, v> q2Var2 = this.f48819h;
            if (q2Var2 == null) {
                quicProtocolOptions.idleTimeout_ = this.f48818g;
            } else {
                quicProtocolOptions.idleTimeout_ = q2Var2.b();
            }
            q2<Duration, Duration.b, v> q2Var3 = this.f48821j;
            if (q2Var3 == null) {
                quicProtocolOptions.cryptoHandshakeTimeout_ = this.f48820i;
            } else {
                quicProtocolOptions.cryptoHandshakeTimeout_ = q2Var3.b();
            }
            q2<RuntimeFeatureFlag, RuntimeFeatureFlag.b, w0> q2Var4 = this.f48823l;
            if (q2Var4 == null) {
                quicProtocolOptions.enabled_ = this.f48822k;
            } else {
                quicProtocolOptions.enabled_ = q2Var4.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.f48825n;
            if (q2Var5 == null) {
                quicProtocolOptions.packetsToReadToConnectionCountRatio_ = this.f48824m;
            } else {
                quicProtocolOptions.packetsToReadToConnectionCountRatio_ = q2Var5.b();
            }
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var6 = this.f48827p;
            if (q2Var6 == null) {
                quicProtocolOptions.cryptoStreamConfig_ = this.f48826o;
            } else {
                quicProtocolOptions.cryptoStreamConfig_ = q2Var6.b();
            }
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var7 = this.f48829r;
            if (q2Var7 == null) {
                quicProtocolOptions.proofSourceConfig_ = this.f48828q;
            } else {
                quicProtocolOptions.proofSourceConfig_ = q2Var7.b();
            }
            Q();
            return quicProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public QuicProtocolOptions getDefaultInstanceForType() {
            return QuicProtocolOptions.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f48821j;
            if (q2Var == null) {
                Duration duration2 = this.f48820i;
                if (duration2 != null) {
                    this.f48820i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48820i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b e0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f48827p;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f48826o;
                if (typedExtensionConfig2 != null) {
                    this.f48826o = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f48826o = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        public b g0(RuntimeFeatureFlag runtimeFeatureFlag) {
            q2<RuntimeFeatureFlag, RuntimeFeatureFlag.b, w0> q2Var = this.f48823l;
            if (q2Var == null) {
                RuntimeFeatureFlag runtimeFeatureFlag2 = this.f48822k;
                if (runtimeFeatureFlag2 != null) {
                    this.f48822k = RuntimeFeatureFlag.newBuilder(runtimeFeatureFlag2).h0(runtimeFeatureFlag).I();
                } else {
                    this.f48822k = runtimeFeatureFlag;
                }
                R();
            } else {
                q2Var.e(runtimeFeatureFlag);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return k.f48865a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3.QuicProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof QuicProtocolOptions) {
                return j0((QuicProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b j0(QuicProtocolOptions quicProtocolOptions) {
            if (quicProtocolOptions == QuicProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (quicProtocolOptions.hasQuicProtocolOptions()) {
                n0(quicProtocolOptions.getQuicProtocolOptions());
            }
            if (quicProtocolOptions.hasIdleTimeout()) {
                k0(quicProtocolOptions.getIdleTimeout());
            }
            if (quicProtocolOptions.hasCryptoHandshakeTimeout()) {
                d0(quicProtocolOptions.getCryptoHandshakeTimeout());
            }
            if (quicProtocolOptions.hasEnabled()) {
                g0(quicProtocolOptions.getEnabled());
            }
            if (quicProtocolOptions.hasPacketsToReadToConnectionCountRatio()) {
                l0(quicProtocolOptions.getPacketsToReadToConnectionCountRatio());
            }
            if (quicProtocolOptions.hasCryptoStreamConfig()) {
                e0(quicProtocolOptions.getCryptoStreamConfig());
            }
            if (quicProtocolOptions.hasProofSourceConfig()) {
                m0(quicProtocolOptions.getProofSourceConfig());
            }
            z(((GeneratedMessageV3) quicProtocolOptions).unknownFields);
            R();
            return this;
        }

        public b k0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f48819h;
            if (q2Var == null) {
                Duration duration2 = this.f48818g;
                if (duration2 != null) {
                    this.f48818g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48818g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b l0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48825n;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48824m;
                if (uInt32Value2 != null) {
                    this.f48824m = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48824m = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b m0(TypedExtensionConfig typedExtensionConfig) {
            q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f48829r;
            if (q2Var == null) {
                TypedExtensionConfig typedExtensionConfig2 = this.f48828q;
                if (typedExtensionConfig2 != null) {
                    this.f48828q = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                } else {
                    this.f48828q = typedExtensionConfig;
                }
                R();
            } else {
                q2Var.e(typedExtensionConfig);
            }
            return this;
        }

        public b n0(io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions) {
            q2<io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions, QuicProtocolOptions.b, q0> q2Var = this.f48817f;
            if (q2Var == null) {
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions2 = this.f48816e;
                if (quicProtocolOptions2 != null) {
                    this.f48816e = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.newBuilder(quicProtocolOptions2).g0(quicProtocolOptions).I();
                } else {
                    this.f48816e = quicProtocolOptions;
                }
                R();
            } else {
                q2Var.e(quicProtocolOptions);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: o0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: q0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: r0 */
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

    /* synthetic */ QuicProtocolOptions(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static QuicProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return k.f48865a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static QuicProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static QuicProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<QuicProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QuicProtocolOptions)) {
            return super.equals(obj);
        }
        QuicProtocolOptions quicProtocolOptions = (QuicProtocolOptions) obj;
        if (hasQuicProtocolOptions() != quicProtocolOptions.hasQuicProtocolOptions()) {
            return false;
        }
        if ((!hasQuicProtocolOptions() || getQuicProtocolOptions().equals(quicProtocolOptions.getQuicProtocolOptions())) && hasIdleTimeout() == quicProtocolOptions.hasIdleTimeout()) {
            if ((!hasIdleTimeout() || getIdleTimeout().equals(quicProtocolOptions.getIdleTimeout())) && hasCryptoHandshakeTimeout() == quicProtocolOptions.hasCryptoHandshakeTimeout()) {
                if ((!hasCryptoHandshakeTimeout() || getCryptoHandshakeTimeout().equals(quicProtocolOptions.getCryptoHandshakeTimeout())) && hasEnabled() == quicProtocolOptions.hasEnabled()) {
                    if ((!hasEnabled() || getEnabled().equals(quicProtocolOptions.getEnabled())) && hasPacketsToReadToConnectionCountRatio() == quicProtocolOptions.hasPacketsToReadToConnectionCountRatio()) {
                        if ((!hasPacketsToReadToConnectionCountRatio() || getPacketsToReadToConnectionCountRatio().equals(quicProtocolOptions.getPacketsToReadToConnectionCountRatio())) && hasCryptoStreamConfig() == quicProtocolOptions.hasCryptoStreamConfig()) {
                            if ((!hasCryptoStreamConfig() || getCryptoStreamConfig().equals(quicProtocolOptions.getCryptoStreamConfig())) && hasProofSourceConfig() == quicProtocolOptions.hasProofSourceConfig()) {
                                return (!hasProofSourceConfig() || getProofSourceConfig().equals(quicProtocolOptions.getProofSourceConfig())) && this.unknownFields.equals(quicProtocolOptions.unknownFields);
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

    public Duration getCryptoHandshakeTimeout() {
        Duration duration = this.cryptoHandshakeTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getCryptoHandshakeTimeoutOrBuilder() {
        return getCryptoHandshakeTimeout();
    }

    public TypedExtensionConfig getCryptoStreamConfig() {
        TypedExtensionConfig typedExtensionConfig = this.cryptoStreamConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getCryptoStreamConfigOrBuilder() {
        return getCryptoStreamConfig();
    }

    public RuntimeFeatureFlag getEnabled() {
        RuntimeFeatureFlag runtimeFeatureFlag = this.enabled_;
        return runtimeFeatureFlag == null ? RuntimeFeatureFlag.getDefaultInstance() : runtimeFeatureFlag;
    }

    public w0 getEnabledOrBuilder() {
        return getEnabled();
    }

    public Duration getIdleTimeout() {
        Duration duration = this.idleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getIdleTimeoutOrBuilder() {
        return getIdleTimeout();
    }

    public UInt32Value getPacketsToReadToConnectionCountRatio() {
        UInt32Value uInt32Value = this.packetsToReadToConnectionCountRatio_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getPacketsToReadToConnectionCountRatioOrBuilder() {
        return getPacketsToReadToConnectionCountRatio();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<QuicProtocolOptions> getParserForType() {
        return PARSER;
    }

    public TypedExtensionConfig getProofSourceConfig() {
        TypedExtensionConfig typedExtensionConfig = this.proofSourceConfig_;
        return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
    }

    public i1 getProofSourceConfigOrBuilder() {
        return getProofSourceConfig();
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions getQuicProtocolOptions() {
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions = this.quicProtocolOptions_;
        return quicProtocolOptions == null ? io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.getDefaultInstance() : quicProtocolOptions;
    }

    public q0 getQuicProtocolOptionsOrBuilder() {
        return getQuicProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.quicProtocolOptions_ != null ? 0 + CodedOutputStream.G(1, getQuicProtocolOptions()) : 0;
        if (this.idleTimeout_ != null) {
            G += CodedOutputStream.G(2, getIdleTimeout());
        }
        if (this.cryptoHandshakeTimeout_ != null) {
            G += CodedOutputStream.G(3, getCryptoHandshakeTimeout());
        }
        if (this.enabled_ != null) {
            G += CodedOutputStream.G(4, getEnabled());
        }
        if (this.packetsToReadToConnectionCountRatio_ != null) {
            G += CodedOutputStream.G(5, getPacketsToReadToConnectionCountRatio());
        }
        if (this.cryptoStreamConfig_ != null) {
            G += CodedOutputStream.G(6, getCryptoStreamConfig());
        }
        if (this.proofSourceConfig_ != null) {
            G += CodedOutputStream.G(7, getProofSourceConfig());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasCryptoHandshakeTimeout() {
        return this.cryptoHandshakeTimeout_ != null;
    }

    public boolean hasCryptoStreamConfig() {
        return this.cryptoStreamConfig_ != null;
    }

    public boolean hasEnabled() {
        return this.enabled_ != null;
    }

    public boolean hasIdleTimeout() {
        return this.idleTimeout_ != null;
    }

    public boolean hasPacketsToReadToConnectionCountRatio() {
        return this.packetsToReadToConnectionCountRatio_ != null;
    }

    public boolean hasProofSourceConfig() {
        return this.proofSourceConfig_ != null;
    }

    public boolean hasQuicProtocolOptions() {
        return this.quicProtocolOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasQuicProtocolOptions()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getQuicProtocolOptions().hashCode();
        }
        if (hasIdleTimeout()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getIdleTimeout().hashCode();
        }
        if (hasCryptoHandshakeTimeout()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getCryptoHandshakeTimeout().hashCode();
        }
        if (hasEnabled()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getEnabled().hashCode();
        }
        if (hasPacketsToReadToConnectionCountRatio()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getPacketsToReadToConnectionCountRatio().hashCode();
        }
        if (hasCryptoStreamConfig()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getCryptoStreamConfig().hashCode();
        }
        if (hasProofSourceConfig()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getProofSourceConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return k.f48866b.d(QuicProtocolOptions.class, b.class);
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
        return new QuicProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.quicProtocolOptions_ != null) {
            codedOutputStream.L0(1, getQuicProtocolOptions());
        }
        if (this.idleTimeout_ != null) {
            codedOutputStream.L0(2, getIdleTimeout());
        }
        if (this.cryptoHandshakeTimeout_ != null) {
            codedOutputStream.L0(3, getCryptoHandshakeTimeout());
        }
        if (this.enabled_ != null) {
            codedOutputStream.L0(4, getEnabled());
        }
        if (this.packetsToReadToConnectionCountRatio_ != null) {
            codedOutputStream.L0(5, getPacketsToReadToConnectionCountRatio());
        }
        if (this.cryptoStreamConfig_ != null) {
            codedOutputStream.L0(6, getCryptoStreamConfig());
        }
        if (this.proofSourceConfig_ != null) {
            codedOutputStream.L0(7, getProofSourceConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ QuicProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(QuicProtocolOptions quicProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().j0(quicProtocolOptions);
    }

    public static QuicProtocolOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private QuicProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuicProtocolOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuicProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public QuicProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static QuicProtocolOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private QuicProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuicProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static QuicProtocolOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private QuicProtocolOptions(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions = this.quicProtocolOptions_;
                                QuicProtocolOptions.b builder = quicProtocolOptions != null ? quicProtocolOptions.toBuilder() : null;
                                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions quicProtocolOptions2 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions) pVar.B(io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.parser(), f0Var);
                                this.quicProtocolOptions_ = quicProtocolOptions2;
                                if (builder != null) {
                                    builder.g0(quicProtocolOptions2);
                                    this.quicProtocolOptions_ = builder.I();
                                }
                            } else if (L == 18) {
                                Duration duration = this.idleTimeout_;
                                Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.idleTimeout_ = duration2;
                                if (builder2 != null) {
                                    builder2.e0(duration2);
                                    this.idleTimeout_ = builder2.I();
                                }
                            } else if (L == 26) {
                                Duration duration3 = this.cryptoHandshakeTimeout_;
                                Duration.b builder3 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.cryptoHandshakeTimeout_ = duration4;
                                if (builder3 != null) {
                                    builder3.e0(duration4);
                                    this.cryptoHandshakeTimeout_ = builder3.I();
                                }
                            } else if (L == 34) {
                                RuntimeFeatureFlag runtimeFeatureFlag = this.enabled_;
                                RuntimeFeatureFlag.b builder4 = runtimeFeatureFlag != null ? runtimeFeatureFlag.toBuilder() : null;
                                RuntimeFeatureFlag runtimeFeatureFlag2 = (RuntimeFeatureFlag) pVar.B(RuntimeFeatureFlag.parser(), f0Var);
                                this.enabled_ = runtimeFeatureFlag2;
                                if (builder4 != null) {
                                    builder4.h0(runtimeFeatureFlag2);
                                    this.enabled_ = builder4.I();
                                }
                            } else if (L == 42) {
                                UInt32Value uInt32Value = this.packetsToReadToConnectionCountRatio_;
                                UInt32Value.b builder5 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.packetsToReadToConnectionCountRatio_ = uInt32Value2;
                                if (builder5 != null) {
                                    builder5.g0(uInt32Value2);
                                    this.packetsToReadToConnectionCountRatio_ = builder5.I();
                                }
                            } else if (L == 50) {
                                TypedExtensionConfig typedExtensionConfig = this.cryptoStreamConfig_;
                                TypedExtensionConfig.b builder6 = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.cryptoStreamConfig_ = typedExtensionConfig2;
                                if (builder6 != null) {
                                    builder6.g0(typedExtensionConfig2);
                                    this.cryptoStreamConfig_ = builder6.I();
                                }
                            } else if (L != 58) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                TypedExtensionConfig typedExtensionConfig3 = this.proofSourceConfig_;
                                TypedExtensionConfig.b builder7 = typedExtensionConfig3 != null ? typedExtensionConfig3.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig4 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.proofSourceConfig_ = typedExtensionConfig4;
                                if (builder7 != null) {
                                    builder7.g0(typedExtensionConfig4);
                                    this.proofSourceConfig_ = builder7.I();
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

    public static QuicProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static QuicProtocolOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuicProtocolOptions parseFrom(p pVar) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static QuicProtocolOptions parseFrom(p pVar, f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
