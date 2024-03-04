package io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.Percent;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ScaleTimersOverloadActionConfig extends GeneratedMessageV3 implements r1 {
    private static final ScaleTimersOverloadActionConfig DEFAULT_INSTANCE = new ScaleTimersOverloadActionConfig();
    private static final e2<ScaleTimersOverloadActionConfig> PARSER = new a();
    public static final int TIMER_SCALE_FACTORS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<ScaleTimer> timerScaleFactors_;

    /* loaded from: classes6.dex */
    public static final class ScaleTimer extends GeneratedMessageV3 implements d {
        public static final int MIN_SCALE_FIELD_NUMBER = 3;
        public static final int MIN_TIMEOUT_FIELD_NUMBER = 2;
        public static final int TIMER_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int overloadAdjustCase_;
        private Object overloadAdjust_;
        private int timer_;
        private static final ScaleTimer DEFAULT_INSTANCE = new ScaleTimer();
        private static final e2<ScaleTimer> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum OverloadAdjustCase implements u0.c {
            MIN_TIMEOUT(2),
            MIN_SCALE(3),
            OVERLOADADJUST_NOT_SET(0);
            
            private final int value;

            OverloadAdjustCase(int i9) {
                this.value = i9;
            }

            public static OverloadAdjustCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return MIN_SCALE;
                    }
                    return MIN_TIMEOUT;
                }
                return OVERLOADADJUST_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static OverloadAdjustCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<ScaleTimer> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ScaleTimer m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ScaleTimer(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f48951e;

            /* renamed from: f  reason: collision with root package name */
            private Object f48952f;

            /* renamed from: g  reason: collision with root package name */
            private int f48953g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f48954h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> f48955i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48980l.d(ScaleTimer.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ScaleTimer build() {
                ScaleTimer I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ScaleTimer I() {
                ScaleTimer scaleTimer = new ScaleTimer(this, (a) null);
                scaleTimer.timer_ = this.f48953g;
                if (this.f48951e == 2) {
                    q2<Duration, Duration.b, v> q2Var = this.f48954h;
                    if (q2Var == null) {
                        scaleTimer.overloadAdjust_ = this.f48952f;
                    } else {
                        scaleTimer.overloadAdjust_ = q2Var.b();
                    }
                }
                if (this.f48951e == 3) {
                    q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var2 = this.f48955i;
                    if (q2Var2 == null) {
                        scaleTimer.overloadAdjust_ = this.f48952f;
                    } else {
                        scaleTimer.overloadAdjust_ = q2Var2.b();
                    }
                }
                scaleTimer.overloadAdjustCase_ = this.f48951e;
                Q();
                return scaleTimer;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ScaleTimer getDefaultInstanceForType() {
                return ScaleTimer.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig$ScaleTimer r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig$ScaleTimer r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.ScaleTimer.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig$ScaleTimer$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ScaleTimer) {
                    return g0((ScaleTimer) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(ScaleTimer scaleTimer) {
                if (scaleTimer == ScaleTimer.getDefaultInstance()) {
                    return this;
                }
                if (scaleTimer.timer_ != 0) {
                    l0(scaleTimer.getTimerValue());
                }
                int i9 = b.f48956a[scaleTimer.getOverloadAdjustCase().ordinal()];
                if (i9 == 1) {
                    i0(scaleTimer.getMinTimeout());
                } else if (i9 == 2) {
                    h0(scaleTimer.getMinScale());
                }
                z(((GeneratedMessageV3) scaleTimer).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48979k;
            }

            public b h0(Percent percent) {
                q2<Percent, Percent.b, io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f> q2Var = this.f48955i;
                if (q2Var == null) {
                    if (this.f48951e == 3 && this.f48952f != Percent.getDefaultInstance()) {
                        this.f48952f = Percent.newBuilder((Percent) this.f48952f).g0(percent).I();
                    } else {
                        this.f48952f = percent;
                    }
                    R();
                } else {
                    if (this.f48951e == 3) {
                        q2Var.e(percent);
                    }
                    this.f48955i.g(percent);
                }
                this.f48951e = 3;
                return this;
            }

            public b i0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f48954h;
                if (q2Var == null) {
                    if (this.f48951e == 2 && this.f48952f != Duration.getDefaultInstance()) {
                        this.f48952f = Duration.newBuilder((Duration) this.f48952f).e0(duration).I();
                    } else {
                        this.f48952f = duration;
                    }
                    R();
                } else {
                    if (this.f48951e == 2) {
                        q2Var.e(duration);
                    }
                    this.f48954h.g(duration);
                }
                this.f48951e = 2;
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

            public b l0(int i9) {
                this.f48953g = i9;
                R();
                return this;
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
                this.f48951e = 0;
                this.f48953g = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f48951e = 0;
                this.f48953g = 0;
                b0();
            }
        }

        /* synthetic */ ScaleTimer(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ScaleTimer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48979k;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ScaleTimer parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ScaleTimer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ScaleTimer> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ScaleTimer)) {
                return super.equals(obj);
            }
            ScaleTimer scaleTimer = (ScaleTimer) obj;
            if (this.timer_ == scaleTimer.timer_ && getOverloadAdjustCase().equals(scaleTimer.getOverloadAdjustCase())) {
                int i9 = this.overloadAdjustCase_;
                if (i9 != 2) {
                    if (i9 == 3 && !getMinScale().equals(scaleTimer.getMinScale())) {
                        return false;
                    }
                } else if (!getMinTimeout().equals(scaleTimer.getMinTimeout())) {
                    return false;
                }
                return this.unknownFields.equals(scaleTimer.unknownFields);
            }
            return false;
        }

        public Percent getMinScale() {
            if (this.overloadAdjustCase_ == 3) {
                return (Percent) this.overloadAdjust_;
            }
            return Percent.getDefaultInstance();
        }

        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.f getMinScaleOrBuilder() {
            if (this.overloadAdjustCase_ == 3) {
                return (Percent) this.overloadAdjust_;
            }
            return Percent.getDefaultInstance();
        }

        public Duration getMinTimeout() {
            if (this.overloadAdjustCase_ == 2) {
                return (Duration) this.overloadAdjust_;
            }
            return Duration.getDefaultInstance();
        }

        public v getMinTimeoutOrBuilder() {
            if (this.overloadAdjustCase_ == 2) {
                return (Duration) this.overloadAdjust_;
            }
            return Duration.getDefaultInstance();
        }

        public OverloadAdjustCase getOverloadAdjustCase() {
            return OverloadAdjustCase.forNumber(this.overloadAdjustCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<ScaleTimer> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int l10 = this.timer_ != TimerType.UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.timer_) : 0;
            if (this.overloadAdjustCase_ == 2) {
                l10 += CodedOutputStream.G(2, (Duration) this.overloadAdjust_);
            }
            if (this.overloadAdjustCase_ == 3) {
                l10 += CodedOutputStream.G(3, (Percent) this.overloadAdjust_);
            }
            int serializedSize = l10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TimerType getTimer() {
            TimerType valueOf = TimerType.valueOf(this.timer_);
            return valueOf == null ? TimerType.UNRECOGNIZED : valueOf;
        }

        public int getTimerValue() {
            return this.timer_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMinScale() {
            return this.overloadAdjustCase_ == 3;
        }

        public boolean hasMinTimeout() {
            return this.overloadAdjustCase_ == 2;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.timer_;
            int i11 = this.overloadAdjustCase_;
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getMinTimeout().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getMinScale().hashCode();
                }
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }
            hashCode2 = i9 + hashCode;
            int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode32;
            return hashCode32;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48980l.d(ScaleTimer.class, b.class);
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
            return new ScaleTimer();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.timer_ != TimerType.UNSPECIFIED.getNumber()) {
                codedOutputStream.v0(1, this.timer_);
            }
            if (this.overloadAdjustCase_ == 2) {
                codedOutputStream.L0(2, (Duration) this.overloadAdjust_);
            }
            if (this.overloadAdjustCase_ == 3) {
                codedOutputStream.L0(3, (Percent) this.overloadAdjust_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ScaleTimer(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ScaleTimer scaleTimer) {
            return DEFAULT_INSTANCE.toBuilder().g0(scaleTimer);
        }

        public static ScaleTimer parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ScaleTimer(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.overloadAdjustCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ScaleTimer parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ScaleTimer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ScaleTimer getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static ScaleTimer parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static ScaleTimer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private ScaleTimer() {
            this.overloadAdjustCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.timer_ = 0;
        }

        public static ScaleTimer parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ScaleTimer parseFrom(InputStream inputStream) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ScaleTimer parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private ScaleTimer(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 8) {
                                if (L == 18) {
                                    Duration.b builder = this.overloadAdjustCase_ == 2 ? ((Duration) this.overloadAdjust_).toBuilder() : null;
                                    o1 B = pVar.B(Duration.parser(), f0Var);
                                    this.overloadAdjust_ = B;
                                    if (builder != null) {
                                        builder.e0((Duration) B);
                                        this.overloadAdjust_ = builder.I();
                                    }
                                    this.overloadAdjustCase_ = 2;
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Percent.b builder2 = this.overloadAdjustCase_ == 3 ? ((Percent) this.overloadAdjust_).toBuilder() : null;
                                    o1 B2 = pVar.B(Percent.parser(), f0Var);
                                    this.overloadAdjust_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((Percent) B2);
                                        this.overloadAdjust_ = builder2.I();
                                    }
                                    this.overloadAdjustCase_ = 3;
                                }
                            } else {
                                this.timer_ = pVar.u();
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

        public static ScaleTimer parseFrom(p pVar) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ScaleTimer parseFrom(p pVar, f0 f0Var) throws IOException {
            return (ScaleTimer) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum TimerType implements h2 {
        UNSPECIFIED(0),
        HTTP_DOWNSTREAM_CONNECTION_IDLE(1),
        HTTP_DOWNSTREAM_STREAM_IDLE(2),
        TRANSPORT_SOCKET_CONNECT(3),
        UNRECOGNIZED(-1);
        
        public static final int HTTP_DOWNSTREAM_CONNECTION_IDLE_VALUE = 1;
        public static final int HTTP_DOWNSTREAM_STREAM_IDLE_VALUE = 2;
        public static final int TRANSPORT_SOCKET_CONNECT_VALUE = 3;
        public static final int UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<TimerType> internalValueMap = new a();
        private static final TimerType[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<TimerType> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public TimerType a(int i9) {
                return TimerType.forNumber(i9);
            }
        }

        TimerType(int i9) {
            this.value = i9;
        }

        public static TimerType forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return TRANSPORT_SOCKET_CONNECT;
                    }
                    return HTTP_DOWNSTREAM_STREAM_IDLE;
                }
                return HTTP_DOWNSTREAM_CONNECTION_IDLE;
            }
            return UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return ScaleTimersOverloadActionConfig.getDescriptor().k().get(0);
        }

        public static u0.d<TimerType> internalGetValueMap() {
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
        public static TimerType valueOf(int i9) {
            return forNumber(i9);
        }

        public static TimerType valueOf(Descriptors.e eVar) {
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
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ScaleTimersOverloadActionConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ScaleTimersOverloadActionConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ScaleTimersOverloadActionConfig(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48956a;

        static {
            int[] iArr = new int[ScaleTimer.OverloadAdjustCase.values().length];
            f48956a = iArr;
            try {
                iArr[ScaleTimer.OverloadAdjustCase.MIN_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48956a[ScaleTimer.OverloadAdjustCase.MIN_SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48956a[ScaleTimer.OverloadAdjustCase.OVERLOADADJUST_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48957e;

        /* renamed from: f  reason: collision with root package name */
        private List<ScaleTimer> f48958f;

        /* renamed from: g  reason: collision with root package name */
        private l2<ScaleTimer, ScaleTimer.b, d> f48959g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48957e & 1) == 0) {
                this.f48958f = new ArrayList(this.f48958f);
                this.f48957e |= 1;
            }
        }

        private l2<ScaleTimer, ScaleTimer.b, d> d0() {
            if (this.f48959g == null) {
                this.f48959g = new l2<>(this.f48958f, (this.f48957e & 1) != 0, H(), O());
                this.f48958f = null;
            }
            return this.f48959g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48978j.d(ScaleTimersOverloadActionConfig.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ScaleTimersOverloadActionConfig build() {
            ScaleTimersOverloadActionConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ScaleTimersOverloadActionConfig I() {
            ScaleTimersOverloadActionConfig scaleTimersOverloadActionConfig = new ScaleTimersOverloadActionConfig(this, (a) null);
            int i9 = this.f48957e;
            l2<ScaleTimer, ScaleTimer.b, d> l2Var = this.f48959g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f48958f = Collections.unmodifiableList(this.f48958f);
                    this.f48957e &= -2;
                }
                scaleTimersOverloadActionConfig.timerScaleFactors_ = this.f48958f;
            } else {
                scaleTimersOverloadActionConfig.timerScaleFactors_ = l2Var.e();
            }
            Q();
            return scaleTimersOverloadActionConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ScaleTimersOverloadActionConfig getDefaultInstanceForType() {
            return ScaleTimersOverloadActionConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.access$1700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.ScaleTimersOverloadActionConfig$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48977i;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof ScaleTimersOverloadActionConfig) {
                return i0((ScaleTimersOverloadActionConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(ScaleTimersOverloadActionConfig scaleTimersOverloadActionConfig) {
            if (scaleTimersOverloadActionConfig == ScaleTimersOverloadActionConfig.getDefaultInstance()) {
                return this;
            }
            if (this.f48959g == null) {
                if (!scaleTimersOverloadActionConfig.timerScaleFactors_.isEmpty()) {
                    if (this.f48958f.isEmpty()) {
                        this.f48958f = scaleTimersOverloadActionConfig.timerScaleFactors_;
                        this.f48957e &= -2;
                    } else {
                        a0();
                        this.f48958f.addAll(scaleTimersOverloadActionConfig.timerScaleFactors_);
                    }
                    R();
                }
            } else if (!scaleTimersOverloadActionConfig.timerScaleFactors_.isEmpty()) {
                if (this.f48959g.k()) {
                    this.f48959g.f();
                    this.f48959g = null;
                    this.f48958f = scaleTimersOverloadActionConfig.timerScaleFactors_;
                    this.f48957e &= -2;
                    this.f48959g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48959g.b(scaleTimersOverloadActionConfig.timerScaleFactors_);
                }
            }
            z(((GeneratedMessageV3) scaleTimersOverloadActionConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48958f = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48958f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ ScaleTimersOverloadActionConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ScaleTimersOverloadActionConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48977i;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ScaleTimersOverloadActionConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ScaleTimersOverloadActionConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScaleTimersOverloadActionConfig)) {
            return super.equals(obj);
        }
        ScaleTimersOverloadActionConfig scaleTimersOverloadActionConfig = (ScaleTimersOverloadActionConfig) obj;
        return getTimerScaleFactorsList().equals(scaleTimersOverloadActionConfig.getTimerScaleFactorsList()) && this.unknownFields.equals(scaleTimersOverloadActionConfig.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ScaleTimersOverloadActionConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.timerScaleFactors_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.timerScaleFactors_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ScaleTimer getTimerScaleFactors(int i9) {
        return this.timerScaleFactors_.get(i9);
    }

    public int getTimerScaleFactorsCount() {
        return this.timerScaleFactors_.size();
    }

    public List<ScaleTimer> getTimerScaleFactorsList() {
        return this.timerScaleFactors_;
    }

    public d getTimerScaleFactorsOrBuilder(int i9) {
        return this.timerScaleFactors_.get(i9);
    }

    public List<? extends d> getTimerScaleFactorsOrBuilderList() {
        return this.timerScaleFactors_;
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getTimerScaleFactorsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTimerScaleFactorsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.overload.v3.d.f48978j.d(ScaleTimersOverloadActionConfig.class, c.class);
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
        return new ScaleTimersOverloadActionConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.timerScaleFactors_.size(); i9++) {
            codedOutputStream.L0(1, this.timerScaleFactors_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ScaleTimersOverloadActionConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(ScaleTimersOverloadActionConfig scaleTimersOverloadActionConfig) {
        return DEFAULT_INSTANCE.toBuilder().i0(scaleTimersOverloadActionConfig);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ScaleTimersOverloadActionConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ScaleTimersOverloadActionConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ScaleTimersOverloadActionConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private ScaleTimersOverloadActionConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.timerScaleFactors_ = Collections.emptyList();
    }

    public static ScaleTimersOverloadActionConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(InputStream inputStream) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ScaleTimersOverloadActionConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                        if (L != 10) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.timerScaleFactors_ = new ArrayList();
                                z11 |= true;
                            }
                            this.timerScaleFactors_.add((ScaleTimer) pVar.B(ScaleTimer.parser(), f0Var));
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
                    this.timerScaleFactors_ = Collections.unmodifiableList(this.timerScaleFactors_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ScaleTimersOverloadActionConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(p pVar) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ScaleTimersOverloadActionConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ScaleTimersOverloadActionConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
