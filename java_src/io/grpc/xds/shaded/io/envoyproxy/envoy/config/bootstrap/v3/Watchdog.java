package io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.i1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Watchdog extends GeneratedMessageV3 implements i {
    public static final int ACTIONS_FIELD_NUMBER = 7;
    public static final int KILL_TIMEOUT_FIELD_NUMBER = 3;
    public static final int MAX_KILL_TIMEOUT_JITTER_FIELD_NUMBER = 6;
    public static final int MEGAMISS_TIMEOUT_FIELD_NUMBER = 2;
    public static final int MISS_TIMEOUT_FIELD_NUMBER = 1;
    public static final int MULTIKILL_THRESHOLD_FIELD_NUMBER = 5;
    public static final int MULTIKILL_TIMEOUT_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private List<WatchdogAction> actions_;
    private Duration killTimeout_;
    private Duration maxKillTimeoutJitter_;
    private Duration megamissTimeout_;
    private byte memoizedIsInitialized;
    private Duration missTimeout_;
    private Percent multikillThreshold_;
    private Duration multikillTimeout_;
    private static final Watchdog DEFAULT_INSTANCE = new Watchdog();
    private static final e2<Watchdog> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class WatchdogAction extends GeneratedMessageV3 implements c {
        public static final int CONFIG_FIELD_NUMBER = 1;
        public static final int EVENT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private TypedExtensionConfig config_;
        private int event_;
        private byte memoizedIsInitialized;
        private static final WatchdogAction DEFAULT_INSTANCE = new WatchdogAction();
        private static final e2<WatchdogAction> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum WatchdogEvent implements h2 {
            UNKNOWN(0),
            KILL(1),
            MULTIKILL(2),
            MEGAMISS(3),
            MISS(4),
            UNRECOGNIZED(-1);
            
            public static final int KILL_VALUE = 1;
            public static final int MEGAMISS_VALUE = 3;
            public static final int MISS_VALUE = 4;
            public static final int MULTIKILL_VALUE = 2;
            public static final int UNKNOWN_VALUE = 0;
            private final int value;
            private static final u0.d<WatchdogEvent> internalValueMap = new a();
            private static final WatchdogEvent[] VALUES = values();

            /* loaded from: classes6.dex */
            class a implements u0.d<WatchdogEvent> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public WatchdogEvent a(int i9) {
                    return WatchdogEvent.forNumber(i9);
                }
            }

            WatchdogEvent(int i9) {
                this.value = i9;
            }

            public static WatchdogEvent forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                if (i9 != 4) {
                                    return null;
                                }
                                return MISS;
                            }
                            return MEGAMISS;
                        }
                        return MULTIKILL;
                    }
                    return KILL;
                }
                return UNKNOWN;
            }

            public static final Descriptors.d getDescriptor() {
                return WatchdogAction.getDescriptor().k().get(0);
            }

            public static u0.d<WatchdogEvent> internalGetValueMap() {
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
            public static WatchdogEvent valueOf(int i9) {
                return forNumber(i9);
            }

            public static WatchdogEvent valueOf(Descriptors.e eVar) {
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
        class a extends com.google.protobuf.c<WatchdogAction> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public WatchdogAction m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new WatchdogAction(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private TypedExtensionConfig f47502e;

            /* renamed from: f  reason: collision with root package name */
            private q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f47503f;

            /* renamed from: g  reason: collision with root package name */
            private int f47504g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47543t.d(WatchdogAction.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public WatchdogAction build() {
                WatchdogAction I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public WatchdogAction I() {
                WatchdogAction watchdogAction = new WatchdogAction(this, (a) null);
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47503f;
                if (q2Var == null) {
                    watchdogAction.config_ = this.f47502e;
                } else {
                    watchdogAction.config_ = q2Var.b();
                }
                watchdogAction.event_ = this.f47504g;
                Q();
                return watchdogAction;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public WatchdogAction getDefaultInstanceForType() {
                return WatchdogAction.getDefaultInstance();
            }

            public b d0(TypedExtensionConfig typedExtensionConfig) {
                q2<TypedExtensionConfig, TypedExtensionConfig.b, i1> q2Var = this.f47503f;
                if (q2Var == null) {
                    TypedExtensionConfig typedExtensionConfig2 = this.f47502e;
                    if (typedExtensionConfig2 != null) {
                        this.f47502e = TypedExtensionConfig.newBuilder(typedExtensionConfig2).g0(typedExtensionConfig).I();
                    } else {
                        this.f47502e = typedExtensionConfig;
                    }
                    R();
                } else {
                    q2Var.e(typedExtensionConfig);
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog$WatchdogAction r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.WatchdogAction) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog$WatchdogAction r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.WatchdogAction) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.WatchdogAction.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog$WatchdogAction$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof WatchdogAction) {
                    return h0((WatchdogAction) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47542s;
            }

            public b h0(WatchdogAction watchdogAction) {
                if (watchdogAction == WatchdogAction.getDefaultInstance()) {
                    return this;
                }
                if (watchdogAction.hasConfig()) {
                    d0(watchdogAction.getConfig());
                }
                if (watchdogAction.event_ != 0) {
                    j0(watchdogAction.getEventValue());
                }
                z(((GeneratedMessageV3) watchdogAction).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b j0(int i9) {
                this.f47504g = i9;
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
                this.f47504g = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47504g = 0;
                b0();
            }
        }

        /* synthetic */ WatchdogAction(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static WatchdogAction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47542s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static WatchdogAction parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static WatchdogAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<WatchdogAction> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof WatchdogAction)) {
                return super.equals(obj);
            }
            WatchdogAction watchdogAction = (WatchdogAction) obj;
            if (hasConfig() != watchdogAction.hasConfig()) {
                return false;
            }
            return (!hasConfig() || getConfig().equals(watchdogAction.getConfig())) && this.event_ == watchdogAction.event_ && this.unknownFields.equals(watchdogAction.unknownFields);
        }

        public TypedExtensionConfig getConfig() {
            TypedExtensionConfig typedExtensionConfig = this.config_;
            return typedExtensionConfig == null ? TypedExtensionConfig.getDefaultInstance() : typedExtensionConfig;
        }

        public i1 getConfigOrBuilder() {
            return getConfig();
        }

        public WatchdogEvent getEvent() {
            WatchdogEvent valueOf = WatchdogEvent.valueOf(this.event_);
            return valueOf == null ? WatchdogEvent.UNRECOGNIZED : valueOf;
        }

        public int getEventValue() {
            return this.event_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<WatchdogAction> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.config_ != null ? 0 + CodedOutputStream.G(1, getConfig()) : 0;
            if (this.event_ != WatchdogEvent.UNKNOWN.getNumber()) {
                G += CodedOutputStream.l(2, this.event_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasConfig() {
            return this.config_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasConfig()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getConfig().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 2) * 53) + this.event_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47543t.d(WatchdogAction.class, b.class);
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
            return new WatchdogAction();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.config_ != null) {
                codedOutputStream.L0(1, getConfig());
            }
            if (this.event_ != WatchdogEvent.UNKNOWN.getNumber()) {
                codedOutputStream.v0(2, this.event_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ WatchdogAction(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(WatchdogAction watchdogAction) {
            return DEFAULT_INSTANCE.toBuilder().h0(watchdogAction);
        }

        public static WatchdogAction parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private WatchdogAction(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static WatchdogAction parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static WatchdogAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public WatchdogAction getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static WatchdogAction parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private WatchdogAction() {
            this.memoizedIsInitialized = (byte) -1;
            this.event_ = 0;
        }

        public static WatchdogAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static WatchdogAction parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static WatchdogAction parseFrom(InputStream inputStream) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private WatchdogAction(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                TypedExtensionConfig typedExtensionConfig = this.config_;
                                TypedExtensionConfig.b builder = typedExtensionConfig != null ? typedExtensionConfig.toBuilder() : null;
                                TypedExtensionConfig typedExtensionConfig2 = (TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var);
                                this.config_ = typedExtensionConfig2;
                                if (builder != null) {
                                    builder.g0(typedExtensionConfig2);
                                    this.config_ = builder.I();
                                }
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.event_ = pVar.u();
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

        public static WatchdogAction parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static WatchdogAction parseFrom(p pVar) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static WatchdogAction parseFrom(p pVar, f0 f0Var) throws IOException {
            return (WatchdogAction) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Watchdog> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Watchdog m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Watchdog(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements i {

        /* renamed from: e  reason: collision with root package name */
        private int f47505e;

        /* renamed from: f  reason: collision with root package name */
        private List<WatchdogAction> f47506f;

        /* renamed from: g  reason: collision with root package name */
        private l2<WatchdogAction, WatchdogAction.b, c> f47507g;

        /* renamed from: h  reason: collision with root package name */
        private Duration f47508h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47509i;

        /* renamed from: j  reason: collision with root package name */
        private Duration f47510j;

        /* renamed from: k  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47511k;

        /* renamed from: l  reason: collision with root package name */
        private Duration f47512l;

        /* renamed from: m  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47513m;

        /* renamed from: n  reason: collision with root package name */
        private Duration f47514n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47515o;

        /* renamed from: p  reason: collision with root package name */
        private Duration f47516p;

        /* renamed from: q  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47517q;

        /* renamed from: r  reason: collision with root package name */
        private Percent f47518r;

        /* renamed from: s  reason: collision with root package name */
        private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f47519s;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47505e & 1) == 0) {
                this.f47506f = new ArrayList(this.f47506f);
                this.f47505e |= 1;
            }
        }

        private l2<WatchdogAction, WatchdogAction.b, c> b0() {
            if (this.f47507g == null) {
                this.f47507g = new l2<>(this.f47506f, (this.f47505e & 1) != 0, H(), O());
                this.f47506f = null;
            }
            return this.f47507g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                b0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47541r.d(Watchdog.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Watchdog build() {
            Watchdog I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Watchdog I() {
            Watchdog watchdog = new Watchdog(this, (a) null);
            int i9 = this.f47505e;
            l2<WatchdogAction, WatchdogAction.b, c> l2Var = this.f47507g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f47506f = Collections.unmodifiableList(this.f47506f);
                    this.f47505e &= -2;
                }
                watchdog.actions_ = this.f47506f;
            } else {
                watchdog.actions_ = l2Var.e();
            }
            q2<Duration, Duration.b, v> q2Var = this.f47509i;
            if (q2Var == null) {
                watchdog.missTimeout_ = this.f47508h;
            } else {
                watchdog.missTimeout_ = q2Var.b();
            }
            q2<Duration, Duration.b, v> q2Var2 = this.f47511k;
            if (q2Var2 == null) {
                watchdog.megamissTimeout_ = this.f47510j;
            } else {
                watchdog.megamissTimeout_ = q2Var2.b();
            }
            q2<Duration, Duration.b, v> q2Var3 = this.f47513m;
            if (q2Var3 == null) {
                watchdog.killTimeout_ = this.f47512l;
            } else {
                watchdog.killTimeout_ = q2Var3.b();
            }
            q2<Duration, Duration.b, v> q2Var4 = this.f47515o;
            if (q2Var4 == null) {
                watchdog.maxKillTimeoutJitter_ = this.f47514n;
            } else {
                watchdog.maxKillTimeoutJitter_ = q2Var4.b();
            }
            q2<Duration, Duration.b, v> q2Var5 = this.f47517q;
            if (q2Var5 == null) {
                watchdog.multikillTimeout_ = this.f47516p;
            } else {
                watchdog.multikillTimeout_ = q2Var5.b();
            }
            q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var6 = this.f47519s;
            if (q2Var6 == null) {
                watchdog.multikillThreshold_ = this.f47518r;
            } else {
                watchdog.multikillThreshold_ = q2Var6.b();
            }
            Q();
            return watchdog;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public Watchdog getDefaultInstanceForType() {
            return Watchdog.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.access$2200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.i0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.i0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.Watchdog$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47540q;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof Watchdog) {
                return i0((Watchdog) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(Watchdog watchdog) {
            if (watchdog == Watchdog.getDefaultInstance()) {
                return this;
            }
            if (this.f47507g == null) {
                if (!watchdog.actions_.isEmpty()) {
                    if (this.f47506f.isEmpty()) {
                        this.f47506f = watchdog.actions_;
                        this.f47505e &= -2;
                    } else {
                        a0();
                        this.f47506f.addAll(watchdog.actions_);
                    }
                    R();
                }
            } else if (!watchdog.actions_.isEmpty()) {
                if (this.f47507g.k()) {
                    this.f47507g.f();
                    this.f47507g = null;
                    this.f47506f = watchdog.actions_;
                    this.f47505e &= -2;
                    this.f47507g = GeneratedMessageV3.alwaysUseFieldBuilders ? b0() : null;
                } else {
                    this.f47507g.b(watchdog.actions_);
                }
            }
            if (watchdog.hasMissTimeout()) {
                m0(watchdog.getMissTimeout());
            }
            if (watchdog.hasMegamissTimeout()) {
                l0(watchdog.getMegamissTimeout());
            }
            if (watchdog.hasKillTimeout()) {
                j0(watchdog.getKillTimeout());
            }
            if (watchdog.hasMaxKillTimeoutJitter()) {
                k0(watchdog.getMaxKillTimeoutJitter());
            }
            if (watchdog.hasMultikillTimeout()) {
                o0(watchdog.getMultikillTimeout());
            }
            if (watchdog.hasMultikillThreshold()) {
                n0(watchdog.getMultikillThreshold());
            }
            z(((GeneratedMessageV3) watchdog).unknownFields);
            R();
            return this;
        }

        public b j0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47513m;
            if (q2Var == null) {
                Duration duration2 = this.f47512l;
                if (duration2 != null) {
                    this.f47512l = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47512l = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b k0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47515o;
            if (q2Var == null) {
                Duration duration2 = this.f47514n;
                if (duration2 != null) {
                    this.f47514n = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47514n = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b l0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47511k;
            if (q2Var == null) {
                Duration duration2 = this.f47510j;
                if (duration2 != null) {
                    this.f47510j = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47510j = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b m0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47509i;
            if (q2Var == null) {
                Duration duration2 = this.f47508h;
                if (duration2 != null) {
                    this.f47508h = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47508h = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b n0(Percent percent) {
            q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f47519s;
            if (q2Var == null) {
                Percent percent2 = this.f47518r;
                if (percent2 != null) {
                    this.f47518r = Percent.newBuilder(percent2).g0(percent).I();
                } else {
                    this.f47518r = percent;
                }
                R();
            } else {
                q2Var.e(percent);
            }
            return this;
        }

        public b o0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47517q;
            if (q2Var == null) {
                Duration duration2 = this.f47516p;
                if (duration2 != null) {
                    this.f47516p = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47516p = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: q0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
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
            this.f47506f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47506f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface c extends r1 {
    }

    /* synthetic */ Watchdog(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Watchdog getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47540q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Watchdog parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Watchdog parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Watchdog> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Watchdog)) {
            return super.equals(obj);
        }
        Watchdog watchdog = (Watchdog) obj;
        if (getActionsList().equals(watchdog.getActionsList()) && hasMissTimeout() == watchdog.hasMissTimeout()) {
            if ((!hasMissTimeout() || getMissTimeout().equals(watchdog.getMissTimeout())) && hasMegamissTimeout() == watchdog.hasMegamissTimeout()) {
                if ((!hasMegamissTimeout() || getMegamissTimeout().equals(watchdog.getMegamissTimeout())) && hasKillTimeout() == watchdog.hasKillTimeout()) {
                    if ((!hasKillTimeout() || getKillTimeout().equals(watchdog.getKillTimeout())) && hasMaxKillTimeoutJitter() == watchdog.hasMaxKillTimeoutJitter()) {
                        if ((!hasMaxKillTimeoutJitter() || getMaxKillTimeoutJitter().equals(watchdog.getMaxKillTimeoutJitter())) && hasMultikillTimeout() == watchdog.hasMultikillTimeout()) {
                            if ((!hasMultikillTimeout() || getMultikillTimeout().equals(watchdog.getMultikillTimeout())) && hasMultikillThreshold() == watchdog.hasMultikillThreshold()) {
                                return (!hasMultikillThreshold() || getMultikillThreshold().equals(watchdog.getMultikillThreshold())) && this.unknownFields.equals(watchdog.unknownFields);
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

    public WatchdogAction getActions(int i9) {
        return this.actions_.get(i9);
    }

    public int getActionsCount() {
        return this.actions_.size();
    }

    public List<WatchdogAction> getActionsList() {
        return this.actions_;
    }

    public c getActionsOrBuilder(int i9) {
        return this.actions_.get(i9);
    }

    public List<? extends c> getActionsOrBuilderList() {
        return this.actions_;
    }

    public Duration getKillTimeout() {
        Duration duration = this.killTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getKillTimeoutOrBuilder() {
        return getKillTimeout();
    }

    public Duration getMaxKillTimeoutJitter() {
        Duration duration = this.maxKillTimeoutJitter_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMaxKillTimeoutJitterOrBuilder() {
        return getMaxKillTimeoutJitter();
    }

    public Duration getMegamissTimeout() {
        Duration duration = this.megamissTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMegamissTimeoutOrBuilder() {
        return getMegamissTimeout();
    }

    public Duration getMissTimeout() {
        Duration duration = this.missTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMissTimeoutOrBuilder() {
        return getMissTimeout();
    }

    public Percent getMultikillThreshold() {
        Percent percent = this.multikillThreshold_;
        return percent == null ? Percent.getDefaultInstance() : percent;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getMultikillThresholdOrBuilder() {
        return getMultikillThreshold();
    }

    public Duration getMultikillTimeout() {
        Duration duration = this.multikillTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMultikillTimeoutOrBuilder() {
        return getMultikillTimeout();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Watchdog> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.missTimeout_ != null ? CodedOutputStream.G(1, getMissTimeout()) + 0 : 0;
        if (this.megamissTimeout_ != null) {
            G += CodedOutputStream.G(2, getMegamissTimeout());
        }
        if (this.killTimeout_ != null) {
            G += CodedOutputStream.G(3, getKillTimeout());
        }
        if (this.multikillTimeout_ != null) {
            G += CodedOutputStream.G(4, getMultikillTimeout());
        }
        if (this.multikillThreshold_ != null) {
            G += CodedOutputStream.G(5, getMultikillThreshold());
        }
        if (this.maxKillTimeoutJitter_ != null) {
            G += CodedOutputStream.G(6, getMaxKillTimeoutJitter());
        }
        for (int i10 = 0; i10 < this.actions_.size(); i10++) {
            G += CodedOutputStream.G(7, this.actions_.get(i10));
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasKillTimeout() {
        return this.killTimeout_ != null;
    }

    public boolean hasMaxKillTimeoutJitter() {
        return this.maxKillTimeoutJitter_ != null;
    }

    public boolean hasMegamissTimeout() {
        return this.megamissTimeout_ != null;
    }

    public boolean hasMissTimeout() {
        return this.missTimeout_ != null;
    }

    public boolean hasMultikillThreshold() {
        return this.multikillThreshold_ != null;
    }

    public boolean hasMultikillTimeout() {
        return this.multikillTimeout_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getActionsCount() > 0) {
            hashCode = (((hashCode * 37) + 7) * 53) + getActionsList().hashCode();
        }
        if (hasMissTimeout()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMissTimeout().hashCode();
        }
        if (hasMegamissTimeout()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMegamissTimeout().hashCode();
        }
        if (hasKillTimeout()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getKillTimeout().hashCode();
        }
        if (hasMaxKillTimeoutJitter()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getMaxKillTimeoutJitter().hashCode();
        }
        if (hasMultikillTimeout()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getMultikillTimeout().hashCode();
        }
        if (hasMultikillThreshold()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getMultikillThreshold().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.bootstrap.v3.c.f47541r.d(Watchdog.class, b.class);
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
        return new Watchdog();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.missTimeout_ != null) {
            codedOutputStream.L0(1, getMissTimeout());
        }
        if (this.megamissTimeout_ != null) {
            codedOutputStream.L0(2, getMegamissTimeout());
        }
        if (this.killTimeout_ != null) {
            codedOutputStream.L0(3, getKillTimeout());
        }
        if (this.multikillTimeout_ != null) {
            codedOutputStream.L0(4, getMultikillTimeout());
        }
        if (this.multikillThreshold_ != null) {
            codedOutputStream.L0(5, getMultikillThreshold());
        }
        if (this.maxKillTimeoutJitter_ != null) {
            codedOutputStream.L0(6, getMaxKillTimeoutJitter());
        }
        for (int i9 = 0; i9 < this.actions_.size(); i9++) {
            codedOutputStream.L0(7, this.actions_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Watchdog(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Watchdog watchdog) {
        return DEFAULT_INSTANCE.toBuilder().i0(watchdog);
    }

    public static Watchdog parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Watchdog(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Watchdog parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Watchdog parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Watchdog getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static Watchdog parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Watchdog() {
        this.memoizedIsInitialized = (byte) -1;
        this.actions_ = Collections.emptyList();
    }

    public static Watchdog parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Watchdog parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Watchdog parseFrom(InputStream inputStream) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Watchdog(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            Duration duration = this.missTimeout_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.missTimeout_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.missTimeout_ = builder.I();
                            }
                        } else if (L == 18) {
                            Duration duration3 = this.megamissTimeout_;
                            Duration.b builder2 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.megamissTimeout_ = duration4;
                            if (builder2 != null) {
                                builder2.e0(duration4);
                                this.megamissTimeout_ = builder2.I();
                            }
                        } else if (L == 26) {
                            Duration duration5 = this.killTimeout_;
                            Duration.b builder3 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.killTimeout_ = duration6;
                            if (builder3 != null) {
                                builder3.e0(duration6);
                                this.killTimeout_ = builder3.I();
                            }
                        } else if (L == 34) {
                            Duration duration7 = this.multikillTimeout_;
                            Duration.b builder4 = duration7 != null ? duration7.toBuilder() : null;
                            Duration duration8 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.multikillTimeout_ = duration8;
                            if (builder4 != null) {
                                builder4.e0(duration8);
                                this.multikillTimeout_ = builder4.I();
                            }
                        } else if (L == 42) {
                            Percent percent = this.multikillThreshold_;
                            Percent.b builder5 = percent != null ? percent.toBuilder() : null;
                            Percent percent2 = (Percent) pVar.B(Percent.parser(), f0Var);
                            this.multikillThreshold_ = percent2;
                            if (builder5 != null) {
                                builder5.g0(percent2);
                                this.multikillThreshold_ = builder5.I();
                            }
                        } else if (L == 50) {
                            Duration duration9 = this.maxKillTimeoutJitter_;
                            Duration.b builder6 = duration9 != null ? duration9.toBuilder() : null;
                            Duration duration10 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxKillTimeoutJitter_ = duration10;
                            if (builder6 != null) {
                                builder6.e0(duration10);
                                this.maxKillTimeoutJitter_ = builder6.I();
                            }
                        } else if (L != 58) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.actions_ = new ArrayList();
                                z11 |= true;
                            }
                            this.actions_.add((WatchdogAction) pVar.B(WatchdogAction.parser(), f0Var));
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
                    this.actions_ = Collections.unmodifiableList(this.actions_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static Watchdog parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Watchdog parseFrom(p pVar) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Watchdog parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Watchdog) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
