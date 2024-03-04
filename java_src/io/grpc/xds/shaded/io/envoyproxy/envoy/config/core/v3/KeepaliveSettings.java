package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class KeepaliveSettings extends GeneratedMessageV3 implements i0 {
    public static final int CONNECTION_IDLE_INTERVAL_FIELD_NUMBER = 4;
    public static final int INTERVAL_FIELD_NUMBER = 1;
    public static final int INTERVAL_JITTER_FIELD_NUMBER = 3;
    public static final int TIMEOUT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Duration connectionIdleInterval_;
    private Percent intervalJitter_;
    private Duration interval_;
    private byte memoizedIsInitialized;
    private Duration timeout_;
    private static final KeepaliveSettings DEFAULT_INSTANCE = new KeepaliveSettings();
    private static final e2<KeepaliveSettings> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<KeepaliveSettings> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public KeepaliveSettings m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new KeepaliveSettings(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i0 {

        /* renamed from: e  reason: collision with root package name */
        private Duration f48051e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f48052f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f48053g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f48054h;

        /* renamed from: i  reason: collision with root package name */
        private Percent f48055i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f48056j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f48057k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f48058l;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48270r.d(KeepaliveSettings.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public KeepaliveSettings build() {
            KeepaliveSettings I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public KeepaliveSettings I() {
            KeepaliveSettings keepaliveSettings = new KeepaliveSettings(this, (a) null);
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48052f;
            if (q2Var == null) {
                keepaliveSettings.interval_ = this.f48051e;
            } else {
                keepaliveSettings.interval_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f48054h;
            if (q2Var2 == null) {
                keepaliveSettings.timeout_ = this.f48053g;
            } else {
                keepaliveSettings.timeout_ = q2Var2.b();
            }
            q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var3 = this.f48056j;
            if (q2Var3 == null) {
                keepaliveSettings.intervalJitter_ = this.f48055i;
            } else {
                keepaliveSettings.intervalJitter_ = q2Var3.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var4 = this.f48058l;
            if (q2Var4 == null) {
                keepaliveSettings.connectionIdleInterval_ = this.f48057k;
            } else {
                keepaliveSettings.connectionIdleInterval_ = q2Var4.b();
            }
            Q();
            return keepaliveSettings;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public KeepaliveSettings getDefaultInstanceForType() {
            return KeepaliveSettings.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48058l;
            if (q2Var == null) {
                Duration duration2 = this.f48057k;
                if (duration2 != null) {
                    this.f48057k = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48057k = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.KeepaliveSettings$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof KeepaliveSettings) {
                return h0((KeepaliveSettings) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48269q;
        }

        public b h0(KeepaliveSettings keepaliveSettings) {
            if (keepaliveSettings == KeepaliveSettings.getDefaultInstance()) {
                return this;
            }
            if (keepaliveSettings.hasInterval()) {
                i0(keepaliveSettings.getInterval());
            }
            if (keepaliveSettings.hasTimeout()) {
                k0(keepaliveSettings.getTimeout());
            }
            if (keepaliveSettings.hasIntervalJitter()) {
                j0(keepaliveSettings.getIntervalJitter());
            }
            if (keepaliveSettings.hasConnectionIdleInterval()) {
                d0(keepaliveSettings.getConnectionIdleInterval());
            }
            z(((GeneratedMessageV3) keepaliveSettings).unknownFields);
            R();
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48052f;
            if (q2Var == null) {
                Duration duration2 = this.f48051e;
                if (duration2 != null) {
                    this.f48051e = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48051e = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b j0(Percent percent) {
            q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f48056j;
            if (q2Var == null) {
                Percent percent2 = this.f48055i;
                if (percent2 != null) {
                    this.f48055i = Percent.newBuilder(percent2).g0(percent).I();
                } else {
                    this.f48055i = percent;
                }
                R();
            } else {
                q2Var.e(percent);
            }
            return this;
        }

        public b k0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48054h;
            if (q2Var == null) {
                Duration duration2 = this.f48053g;
                if (duration2 != null) {
                    this.f48053g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48053g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
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

    /* synthetic */ KeepaliveSettings(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static KeepaliveSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48269q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static KeepaliveSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static KeepaliveSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<KeepaliveSettings> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof KeepaliveSettings)) {
            return super.equals(obj);
        }
        KeepaliveSettings keepaliveSettings = (KeepaliveSettings) obj;
        if (hasInterval() != keepaliveSettings.hasInterval()) {
            return false;
        }
        if ((!hasInterval() || getInterval().equals(keepaliveSettings.getInterval())) && hasTimeout() == keepaliveSettings.hasTimeout()) {
            if ((!hasTimeout() || getTimeout().equals(keepaliveSettings.getTimeout())) && hasIntervalJitter() == keepaliveSettings.hasIntervalJitter()) {
                if ((!hasIntervalJitter() || getIntervalJitter().equals(keepaliveSettings.getIntervalJitter())) && hasConnectionIdleInterval() == keepaliveSettings.hasConnectionIdleInterval()) {
                    return (!hasConnectionIdleInterval() || getConnectionIdleInterval().equals(keepaliveSettings.getConnectionIdleInterval())) && this.unknownFields.equals(keepaliveSettings.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public Duration getConnectionIdleInterval() {
        Duration duration = this.connectionIdleInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getConnectionIdleIntervalOrBuilder() {
        return getConnectionIdleInterval();
    }

    public Duration getInterval() {
        Duration duration = this.interval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public Percent getIntervalJitter() {
        Percent percent = this.intervalJitter_;
        return percent == null ? Percent.getDefaultInstance() : percent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getIntervalJitterOrBuilder() {
        return getIntervalJitter();
    }

    public com.google.protobuf.v getIntervalOrBuilder() {
        return getInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<KeepaliveSettings> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.interval_ != null ? 0 + CodedOutputStream.G(1, getInterval()) : 0;
        if (this.timeout_ != null) {
            G += CodedOutputStream.G(2, getTimeout());
        }
        if (this.intervalJitter_ != null) {
            G += CodedOutputStream.G(3, getIntervalJitter());
        }
        if (this.connectionIdleInterval_ != null) {
            G += CodedOutputStream.G(4, getConnectionIdleInterval());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public Duration getTimeout() {
        Duration duration = this.timeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getTimeoutOrBuilder() {
        return getTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConnectionIdleInterval() {
        return this.connectionIdleInterval_ != null;
    }

    public boolean hasInterval() {
        return this.interval_ != null;
    }

    public boolean hasIntervalJitter() {
        return this.intervalJitter_ != null;
    }

    public boolean hasTimeout() {
        return this.timeout_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasInterval()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getInterval().hashCode();
        }
        if (hasTimeout()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getTimeout().hashCode();
        }
        if (hasIntervalJitter()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getIntervalJitter().hashCode();
        }
        if (hasConnectionIdleInterval()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getConnectionIdleInterval().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48270r.d(KeepaliveSettings.class, b.class);
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
        return new KeepaliveSettings();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.interval_ != null) {
            codedOutputStream.L0(1, getInterval());
        }
        if (this.timeout_ != null) {
            codedOutputStream.L0(2, getTimeout());
        }
        if (this.intervalJitter_ != null) {
            codedOutputStream.L0(3, getIntervalJitter());
        }
        if (this.connectionIdleInterval_ != null) {
            codedOutputStream.L0(4, getConnectionIdleInterval());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ KeepaliveSettings(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(KeepaliveSettings keepaliveSettings) {
        return DEFAULT_INSTANCE.toBuilder().h0(keepaliveSettings);
    }

    public static KeepaliveSettings parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private KeepaliveSettings(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static KeepaliveSettings parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static KeepaliveSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public KeepaliveSettings getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static KeepaliveSettings parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private KeepaliveSettings() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static KeepaliveSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static KeepaliveSettings parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private KeepaliveSettings(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                Duration duration = this.interval_;
                                Duration.b builder = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.interval_ = duration2;
                                if (builder != null) {
                                    builder.e0(duration2);
                                    this.interval_ = builder.I();
                                }
                            } else if (L == 18) {
                                Duration duration3 = this.timeout_;
                                Duration.b builder2 = duration3 != null ? duration3.toBuilder() : null;
                                Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.timeout_ = duration4;
                                if (builder2 != null) {
                                    builder2.e0(duration4);
                                    this.timeout_ = builder2.I();
                                }
                            } else if (L == 26) {
                                Percent percent = this.intervalJitter_;
                                Percent.b builder3 = percent != null ? percent.toBuilder() : null;
                                Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                                this.intervalJitter_ = percent2;
                                if (builder3 != null) {
                                    builder3.g0(percent2);
                                    this.intervalJitter_ = builder3.I();
                                }
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Duration duration5 = this.connectionIdleInterval_;
                                Duration.b builder4 = duration5 != null ? duration5.toBuilder() : null;
                                Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.connectionIdleInterval_ = duration6;
                                if (builder4 != null) {
                                    builder4.e0(duration6);
                                    this.connectionIdleInterval_ = builder4.I();
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

    public static KeepaliveSettings parseFrom(InputStream inputStream) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static KeepaliveSettings parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static KeepaliveSettings parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static KeepaliveSettings parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (KeepaliveSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
