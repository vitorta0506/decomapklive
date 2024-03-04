package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class BackoffStrategy extends GeneratedMessageV3 implements f {
    public static final int BASE_INTERVAL_FIELD_NUMBER = 1;
    public static final int MAX_INTERVAL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Duration baseInterval_;
    private Duration maxInterval_;
    private byte memoizedIsInitialized;
    private static final BackoffStrategy DEFAULT_INSTANCE = new BackoffStrategy();
    private static final e2<BackoffStrategy> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<BackoffStrategy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public BackoffStrategy m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new BackoffStrategy(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private Duration f46373e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46374f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f46375g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46376h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f46690b.d(BackoffStrategy.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public BackoffStrategy build() {
            BackoffStrategy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public BackoffStrategy I() {
            BackoffStrategy backoffStrategy = new BackoffStrategy(this, (a) null);
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46374f;
            if (q2Var == null) {
                backoffStrategy.baseInterval_ = this.f46373e;
            } else {
                backoffStrategy.baseInterval_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f46376h;
            if (q2Var2 == null) {
                backoffStrategy.maxInterval_ = this.f46375g;
            } else {
                backoffStrategy.maxInterval_ = q2Var2.b();
            }
            Q();
            return backoffStrategy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public BackoffStrategy getDefaultInstanceForType() {
            return BackoffStrategy.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46374f;
            if (q2Var == null) {
                Duration duration2 = this.f46373e;
                if (duration2 != null) {
                    this.f46373e = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46373e = duration;
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.BackoffStrategy$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof BackoffStrategy) {
                return h0((BackoffStrategy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f46689a;
        }

        public b h0(BackoffStrategy backoffStrategy) {
            if (backoffStrategy == BackoffStrategy.getDefaultInstance()) {
                return this;
            }
            if (backoffStrategy.hasBaseInterval()) {
                d0(backoffStrategy.getBaseInterval());
            }
            if (backoffStrategy.hasMaxInterval()) {
                i0(backoffStrategy.getMaxInterval());
            }
            z(((GeneratedMessageV3) backoffStrategy).unknownFields);
            R();
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46376h;
            if (q2Var == null) {
                Duration duration2 = this.f46375g;
                if (duration2 != null) {
                    this.f46375g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46375g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
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

    /* synthetic */ BackoffStrategy(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static BackoffStrategy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f46689a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static BackoffStrategy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BackoffStrategy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<BackoffStrategy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackoffStrategy)) {
            return super.equals(obj);
        }
        BackoffStrategy backoffStrategy = (BackoffStrategy) obj;
        if (hasBaseInterval() != backoffStrategy.hasBaseInterval()) {
            return false;
        }
        if ((!hasBaseInterval() || getBaseInterval().equals(backoffStrategy.getBaseInterval())) && hasMaxInterval() == backoffStrategy.hasMaxInterval()) {
            return (!hasMaxInterval() || getMaxInterval().equals(backoffStrategy.getMaxInterval())) && this.unknownFields.equals(backoffStrategy.unknownFields);
        }
        return false;
    }

    public Duration getBaseInterval() {
        Duration duration = this.baseInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getBaseIntervalOrBuilder() {
        return getBaseInterval();
    }

    public Duration getMaxInterval() {
        Duration duration = this.maxInterval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getMaxIntervalOrBuilder() {
        return getMaxInterval();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<BackoffStrategy> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.baseInterval_ != null ? 0 + CodedOutputStream.G(1, getBaseInterval()) : 0;
        if (this.maxInterval_ != null) {
            G += CodedOutputStream.G(2, getMaxInterval());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBaseInterval() {
        return this.baseInterval_ != null;
    }

    public boolean hasMaxInterval() {
        return this.maxInterval_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasBaseInterval()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getBaseInterval().hashCode();
        }
        if (hasMaxInterval()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMaxInterval().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f46690b.d(BackoffStrategy.class, b.class);
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
        return new BackoffStrategy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.baseInterval_ != null) {
            codedOutputStream.L0(1, getBaseInterval());
        }
        if (this.maxInterval_ != null) {
            codedOutputStream.L0(2, getMaxInterval());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ BackoffStrategy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(BackoffStrategy backoffStrategy) {
        return DEFAULT_INSTANCE.toBuilder().h0(backoffStrategy);
    }

    public static BackoffStrategy parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private BackoffStrategy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BackoffStrategy parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static BackoffStrategy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public BackoffStrategy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static BackoffStrategy parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private BackoffStrategy() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static BackoffStrategy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static BackoffStrategy parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private BackoffStrategy(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Duration.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            Duration duration = this.baseInterval_;
                            builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.baseInterval_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.baseInterval_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Duration duration3 = this.maxInterval_;
                            builder = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxInterval_ = duration4;
                            if (builder != null) {
                                builder.e0(duration4);
                                this.maxInterval_ = builder.I();
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

    public static BackoffStrategy parseFrom(InputStream inputStream) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BackoffStrategy parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static BackoffStrategy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static BackoffStrategy parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (BackoffStrategy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
