package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import com.google.protobuf.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.HeaderMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RetryPolicy extends GeneratedMessageV3 implements j {
    public static final int HOST_SELECTION_RETRY_MAX_ATTEMPTS_FIELD_NUMBER = 6;
    public static final int NUM_RETRIES_FIELD_NUMBER = 2;
    public static final int PER_TRY_TIMEOUT_FIELD_NUMBER = 3;
    public static final int RETRIABLE_HEADERS_FIELD_NUMBER = 9;
    public static final int RETRIABLE_REQUEST_HEADERS_FIELD_NUMBER = 10;
    public static final int RETRIABLE_STATUS_CODES_FIELD_NUMBER = 7;
    public static final int RETRY_BACK_OFF_FIELD_NUMBER = 8;
    public static final int RETRY_HOST_PREDICATE_FIELD_NUMBER = 5;
    public static final int RETRY_ON_FIELD_NUMBER = 1;
    public static final int RETRY_PRIORITY_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private long hostSelectionRetryMaxAttempts_;
    private byte memoizedIsInitialized;
    private UInt32Value numRetries_;
    private Duration perTryTimeout_;
    private List<HeaderMatcher> retriableHeaders_;
    private List<HeaderMatcher> retriableRequestHeaders_;
    private int retriableStatusCodesMemoizedSerializedSize;
    private u0.g retriableStatusCodes_;
    private RetryBackOff retryBackOff_;
    private List<RetryHostPredicate> retryHostPredicate_;
    private volatile Object retryOn_;
    private RetryPriority retryPriority_;
    private static final RetryPolicy DEFAULT_INSTANCE = new RetryPolicy();
    private static final e2<RetryPolicy> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class RetryBackOff extends GeneratedMessageV3 implements d {
        public static final int BASE_INTERVAL_FIELD_NUMBER = 1;
        public static final int MAX_INTERVAL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private Duration baseInterval_;
        private Duration maxInterval_;
        private byte memoizedIsInitialized;
        private static final RetryBackOff DEFAULT_INSTANCE = new RetryBackOff();
        private static final e2<RetryBackOff> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RetryBackOff> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RetryBackOff m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RetryBackOff(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private Duration f47090e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f47091f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f47092g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, v> f47093h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f47290d0.d(RetryBackOff.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RetryBackOff build() {
                RetryBackOff I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RetryBackOff I() {
                RetryBackOff retryBackOff = new RetryBackOff(this, (a) null);
                q2<Duration, Duration.b, v> q2Var = this.f47091f;
                if (q2Var == null) {
                    retryBackOff.baseInterval_ = this.f47090e;
                } else {
                    retryBackOff.baseInterval_ = q2Var.b();
                }
                q2<Duration, Duration.b, v> q2Var2 = this.f47093h;
                if (q2Var2 == null) {
                    retryBackOff.maxInterval_ = this.f47092g;
                } else {
                    retryBackOff.maxInterval_ = q2Var2.b();
                }
                Q();
                return retryBackOff;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RetryBackOff getDefaultInstanceForType() {
                return RetryBackOff.getDefaultInstance();
            }

            public b d0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f47091f;
                if (q2Var == null) {
                    Duration duration2 = this.f47090e;
                    if (duration2 != null) {
                        this.f47090e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f47090e = duration;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryBackOff.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryBackOff.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryBackOff r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryBackOff) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryBackOff r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryBackOff) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryBackOff.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryBackOff$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RetryBackOff) {
                    return h0((RetryBackOff) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f47288c0;
            }

            public b h0(RetryBackOff retryBackOff) {
                if (retryBackOff == RetryBackOff.getDefaultInstance()) {
                    return this;
                }
                if (retryBackOff.hasBaseInterval()) {
                    d0(retryBackOff.getBaseInterval());
                }
                if (retryBackOff.hasMaxInterval()) {
                    i0(retryBackOff.getMaxInterval());
                }
                z(((GeneratedMessageV3) retryBackOff).unknownFields);
                R();
                return this;
            }

            public b i0(Duration duration) {
                q2<Duration, Duration.b, v> q2Var = this.f47093h;
                if (q2Var == null) {
                    Duration duration2 = this.f47092g;
                    if (duration2 != null) {
                        this.f47092g = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f47092g = duration;
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

        /* synthetic */ RetryBackOff(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RetryBackOff getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f47288c0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RetryBackOff parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RetryBackOff parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RetryBackOff> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RetryBackOff)) {
                return super.equals(obj);
            }
            RetryBackOff retryBackOff = (RetryBackOff) obj;
            if (hasBaseInterval() != retryBackOff.hasBaseInterval()) {
                return false;
            }
            if ((!hasBaseInterval() || getBaseInterval().equals(retryBackOff.getBaseInterval())) && hasMaxInterval() == retryBackOff.hasMaxInterval()) {
                return (!hasMaxInterval() || getMaxInterval().equals(retryBackOff.getMaxInterval())) && this.unknownFields.equals(retryBackOff.unknownFields);
            }
            return false;
        }

        public Duration getBaseInterval() {
            Duration duration = this.baseInterval_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getBaseIntervalOrBuilder() {
            return getBaseInterval();
        }

        public Duration getMaxInterval() {
            Duration duration = this.maxInterval_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public v getMaxIntervalOrBuilder() {
            return getMaxInterval();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RetryBackOff> getParserForType() {
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
            return l.f47290d0.d(RetryBackOff.class, b.class);
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
            return new RetryBackOff();
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

        /* synthetic */ RetryBackOff(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RetryBackOff retryBackOff) {
            return DEFAULT_INSTANCE.toBuilder().h0(retryBackOff);
        }

        public static RetryBackOff parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RetryBackOff(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RetryBackOff parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RetryBackOff parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RetryBackOff getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static RetryBackOff parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RetryBackOff() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RetryBackOff parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RetryBackOff parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        private RetryBackOff(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

        public static RetryBackOff parseFrom(InputStream inputStream) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RetryBackOff parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RetryBackOff parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RetryBackOff parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RetryHostPredicate extends GeneratedMessageV3 implements e {
        public static final int CONFIG_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int configTypeCase_;
        private Object configType_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final RetryHostPredicate DEFAULT_INSTANCE = new RetryHostPredicate();
        private static final e2<RetryHostPredicate> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ConfigTypeCase implements u0.c {
            CONFIG(2),
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return TYPED_CONFIG;
                    }
                    return CONFIG;
                }
                return CONFIGTYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConfigTypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RetryHostPredicate> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RetryHostPredicate m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RetryHostPredicate(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private int f47094e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47095f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47096g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f47097h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f47098i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.f47286b0.d(RetryHostPredicate.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RetryHostPredicate build() {
                RetryHostPredicate I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RetryHostPredicate I() {
                RetryHostPredicate retryHostPredicate = new RetryHostPredicate(this, (a) null);
                retryHostPredicate.name_ = this.f47096g;
                if (this.f47094e == 2) {
                    q2<Struct, Struct.b, u2> q2Var = this.f47097h;
                    if (q2Var == null) {
                        retryHostPredicate.configType_ = this.f47095f;
                    } else {
                        retryHostPredicate.configType_ = q2Var.b();
                    }
                }
                if (this.f47094e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f47098i;
                    if (q2Var2 == null) {
                        retryHostPredicate.configType_ = this.f47095f;
                    } else {
                        retryHostPredicate.configType_ = q2Var2.b();
                    }
                }
                retryHostPredicate.configTypeCase_ = this.f47094e;
                Q();
                return retryHostPredicate;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RetryHostPredicate getDefaultInstanceForType() {
                return RetryHostPredicate.getDefaultInstance();
            }

            @Deprecated
            public b d0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f47097h;
                if (q2Var == null) {
                    if (this.f47094e == 2 && this.f47095f != Struct.getDefaultInstance()) {
                        this.f47095f = Struct.newBuilder((Struct) this.f47095f).i0(struct).I();
                    } else {
                        this.f47095f = struct;
                    }
                    R();
                } else {
                    if (this.f47094e == 2) {
                        q2Var.e(struct);
                    }
                    this.f47097h.g(struct);
                }
                this.f47094e = 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryHostPredicate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryHostPredicate.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryHostPredicate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryHostPredicate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryHostPredicate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryHostPredicate) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryHostPredicate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryHostPredicate$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RetryHostPredicate) {
                    return h0((RetryHostPredicate) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.f47284a0;
            }

            public b h0(RetryHostPredicate retryHostPredicate) {
                if (retryHostPredicate == RetryHostPredicate.getDefaultInstance()) {
                    return this;
                }
                if (!retryHostPredicate.getName().isEmpty()) {
                    this.f47096g = retryHostPredicate.name_;
                    R();
                }
                int i9 = b.f47105b[retryHostPredicate.getConfigTypeCase().ordinal()];
                if (i9 == 1) {
                    d0(retryHostPredicate.getConfig());
                } else if (i9 == 2) {
                    i0(retryHostPredicate.getTypedConfig());
                }
                z(((GeneratedMessageV3) retryHostPredicate).unknownFields);
                R();
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47098i;
                if (q2Var == null) {
                    if (this.f47094e == 3 && this.f47095f != Any.getDefaultInstance()) {
                        this.f47095f = Any.newBuilder((Any) this.f47095f).d0(any).I();
                    } else {
                        this.f47095f = any;
                    }
                    R();
                } else {
                    if (this.f47094e == 3) {
                        q2Var.e(any);
                    }
                    this.f47098i.g(any);
                }
                this.f47094e = 3;
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
                this.f47094e = 0;
                this.f47096g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47094e = 0;
                this.f47096g = "";
                b0();
            }
        }

        /* synthetic */ RetryHostPredicate(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RetryHostPredicate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.f47284a0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RetryHostPredicate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RetryHostPredicate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RetryHostPredicate> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RetryHostPredicate)) {
                return super.equals(obj);
            }
            RetryHostPredicate retryHostPredicate = (RetryHostPredicate) obj;
            if (getName().equals(retryHostPredicate.getName()) && getConfigTypeCase().equals(retryHostPredicate.getConfigTypeCase())) {
                int i9 = this.configTypeCase_;
                if (i9 != 2) {
                    if (i9 == 3 && !getTypedConfig().equals(retryHostPredicate.getTypedConfig())) {
                        return false;
                    }
                } else if (!getConfig().equals(retryHostPredicate.getConfig())) {
                    return false;
                }
                return this.unknownFields.equals(retryHostPredicate.unknownFields);
            }
            return false;
        }

        @Deprecated
        public Struct getConfig() {
            if (this.configTypeCase_ == 2) {
                return (Struct) this.configType_;
            }
            return Struct.getDefaultInstance();
        }

        @Deprecated
        public u2 getConfigOrBuilder() {
            if (this.configTypeCase_ == 2) {
                return (Struct) this.configType_;
            }
            return Struct.getDefaultInstance();
        }

        public ConfigTypeCase getConfigTypeCase() {
            return ConfigTypeCase.forNumber(this.configTypeCase_);
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
        public e2<RetryHostPredicate> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.configTypeCase_ == 2) {
                computeStringSize += CodedOutputStream.G(2, (Struct) this.configType_);
            }
            if (this.configTypeCase_ == 3) {
                computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Deprecated
        public boolean hasConfig() {
            return this.configTypeCase_ == 2;
        }

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            int i11 = this.configTypeCase_;
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getConfig().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getTypedConfig().hashCode();
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
            return l.f47286b0.d(RetryHostPredicate.class, b.class);
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
            return new RetryHostPredicate();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.configTypeCase_ == 2) {
                codedOutputStream.L0(2, (Struct) this.configType_);
            }
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RetryHostPredicate(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RetryHostPredicate retryHostPredicate) {
            return DEFAULT_INSTANCE.toBuilder().h0(retryHostPredicate);
        }

        public static RetryHostPredicate parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RetryHostPredicate(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RetryHostPredicate parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RetryHostPredicate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RetryHostPredicate getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static RetryHostPredicate parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static RetryHostPredicate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private RetryHostPredicate() {
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static RetryHostPredicate parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RetryHostPredicate parseFrom(InputStream inputStream) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RetryHostPredicate parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private RetryHostPredicate(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Struct.b builder = this.configTypeCase_ == 2 ? ((Struct) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Struct.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.i0((Struct) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 2;
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder2 = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B2 = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B2;
                                    if (builder2 != null) {
                                        builder2.d0((Any) B2);
                                        this.configType_ = builder2.I();
                                    }
                                    this.configTypeCase_ = 3;
                                }
                            } else {
                                this.name_ = pVar.K();
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

        public static RetryHostPredicate parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RetryHostPredicate parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RetryHostPredicate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class RetryPriority extends GeneratedMessageV3 implements f {
        public static final int CONFIG_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int TYPED_CONFIG_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private int configTypeCase_;
        private Object configType_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final RetryPriority DEFAULT_INSTANCE = new RetryPriority();
        private static final e2<RetryPriority> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum ConfigTypeCase implements u0.c {
            CONFIG(2),
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return TYPED_CONFIG;
                    }
                    return CONFIG;
                }
                return CONFIGTYPE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConfigTypeCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RetryPriority> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RetryPriority m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RetryPriority(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f47099e;

            /* renamed from: f  reason: collision with root package name */
            private Object f47100f;

            /* renamed from: g  reason: collision with root package name */
            private Object f47101g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Struct, Struct.b, u2> f47102h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f47103i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return l.Z.d(RetryPriority.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RetryPriority build() {
                RetryPriority I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RetryPriority I() {
                RetryPriority retryPriority = new RetryPriority(this, (a) null);
                retryPriority.name_ = this.f47101g;
                if (this.f47099e == 2) {
                    q2<Struct, Struct.b, u2> q2Var = this.f47102h;
                    if (q2Var == null) {
                        retryPriority.configType_ = this.f47100f;
                    } else {
                        retryPriority.configType_ = q2Var.b();
                    }
                }
                if (this.f47099e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var2 = this.f47103i;
                    if (q2Var2 == null) {
                        retryPriority.configType_ = this.f47100f;
                    } else {
                        retryPriority.configType_ = q2Var2.b();
                    }
                }
                retryPriority.configTypeCase_ = this.f47099e;
                Q();
                return retryPriority;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public RetryPriority getDefaultInstanceForType() {
                return RetryPriority.getDefaultInstance();
            }

            @Deprecated
            public b d0(Struct struct) {
                q2<Struct, Struct.b, u2> q2Var = this.f47102h;
                if (q2Var == null) {
                    if (this.f47099e == 2 && this.f47100f != Struct.getDefaultInstance()) {
                        this.f47100f = Struct.newBuilder((Struct) this.f47100f).i0(struct).I();
                    } else {
                        this.f47100f = struct;
                    }
                    R();
                } else {
                    if (this.f47099e == 2) {
                        q2Var.e(struct);
                    }
                    this.f47102h.g(struct);
                }
                this.f47099e = 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryPriority.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryPriority.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryPriority r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryPriority) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryPriority r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryPriority) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.RetryPriority.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$RetryPriority$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RetryPriority) {
                    return h0((RetryPriority) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return l.Y;
            }

            public b h0(RetryPriority retryPriority) {
                if (retryPriority == RetryPriority.getDefaultInstance()) {
                    return this;
                }
                if (!retryPriority.getName().isEmpty()) {
                    this.f47101g = retryPriority.name_;
                    R();
                }
                int i9 = b.f47104a[retryPriority.getConfigTypeCase().ordinal()];
                if (i9 == 1) {
                    d0(retryPriority.getConfig());
                } else if (i9 == 2) {
                    i0(retryPriority.getTypedConfig());
                }
                z(((GeneratedMessageV3) retryPriority).unknownFields);
                R();
                return this;
            }

            public b i0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f47103i;
                if (q2Var == null) {
                    if (this.f47099e == 3 && this.f47100f != Any.getDefaultInstance()) {
                        this.f47100f = Any.newBuilder((Any) this.f47100f).d0(any).I();
                    } else {
                        this.f47100f = any;
                    }
                    R();
                } else {
                    if (this.f47099e == 3) {
                        q2Var.e(any);
                    }
                    this.f47103i.g(any);
                }
                this.f47099e = 3;
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
                this.f47099e = 0;
                this.f47101g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f47099e = 0;
                this.f47101g = "";
                b0();
            }
        }

        /* synthetic */ RetryPriority(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RetryPriority getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return l.Y;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RetryPriority parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RetryPriority parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RetryPriority> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RetryPriority)) {
                return super.equals(obj);
            }
            RetryPriority retryPriority = (RetryPriority) obj;
            if (getName().equals(retryPriority.getName()) && getConfigTypeCase().equals(retryPriority.getConfigTypeCase())) {
                int i9 = this.configTypeCase_;
                if (i9 != 2) {
                    if (i9 == 3 && !getTypedConfig().equals(retryPriority.getTypedConfig())) {
                        return false;
                    }
                } else if (!getConfig().equals(retryPriority.getConfig())) {
                    return false;
                }
                return this.unknownFields.equals(retryPriority.unknownFields);
            }
            return false;
        }

        @Deprecated
        public Struct getConfig() {
            if (this.configTypeCase_ == 2) {
                return (Struct) this.configType_;
            }
            return Struct.getDefaultInstance();
        }

        @Deprecated
        public u2 getConfigOrBuilder() {
            if (this.configTypeCase_ == 2) {
                return (Struct) this.configType_;
            }
            return Struct.getDefaultInstance();
        }

        public ConfigTypeCase getConfigTypeCase() {
            return ConfigTypeCase.forNumber(this.configTypeCase_);
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
        public e2<RetryPriority> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.configTypeCase_ == 2) {
                computeStringSize += CodedOutputStream.G(2, (Struct) this.configType_);
            }
            if (this.configTypeCase_ == 3) {
                computeStringSize += CodedOutputStream.G(3, (Any) this.configType_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Any getTypedConfig() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        public com.google.protobuf.f getTypedConfigOrBuilder() {
            if (this.configTypeCase_ == 3) {
                return (Any) this.configType_;
            }
            return Any.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        @Deprecated
        public boolean hasConfig() {
            return this.configTypeCase_ == 2;
        }

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            int i11 = this.configTypeCase_;
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getConfig().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getTypedConfig().hashCode();
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
            return l.Z.d(RetryPriority.class, b.class);
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
            return new RetryPriority();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.configTypeCase_ == 2) {
                codedOutputStream.L0(2, (Struct) this.configType_);
            }
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RetryPriority(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RetryPriority retryPriority) {
            return DEFAULT_INSTANCE.toBuilder().h0(retryPriority);
        }

        public static RetryPriority parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RetryPriority(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RetryPriority parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RetryPriority parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RetryPriority getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static RetryPriority parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static RetryPriority parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private RetryPriority() {
            this.configTypeCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
        }

        public static RetryPriority parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RetryPriority parseFrom(InputStream inputStream) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RetryPriority parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private RetryPriority(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    Struct.b builder = this.configTypeCase_ == 2 ? ((Struct) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Struct.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.i0((Struct) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 2;
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder2 = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B2 = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B2;
                                    if (builder2 != null) {
                                        builder2.d0((Any) B2);
                                        this.configType_ = builder2.I();
                                    }
                                    this.configTypeCase_ = 3;
                                }
                            } else {
                                this.name_ = pVar.K();
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

        public static RetryPriority parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RetryPriority parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RetryPriority) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RetryPolicy> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RetryPolicy m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RetryPolicy(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47104a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f47105b;

        static {
            int[] iArr = new int[RetryHostPredicate.ConfigTypeCase.values().length];
            f47105b = iArr;
            try {
                iArr[RetryHostPredicate.ConfigTypeCase.CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47105b[RetryHostPredicate.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47105b[RetryHostPredicate.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[RetryPriority.ConfigTypeCase.values().length];
            f47104a = iArr2;
            try {
                iArr2[RetryPriority.ConfigTypeCase.CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47104a[RetryPriority.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47104a[RetryPriority.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements j {

        /* renamed from: e  reason: collision with root package name */
        private int f47106e;

        /* renamed from: f  reason: collision with root package name */
        private Object f47107f;

        /* renamed from: g  reason: collision with root package name */
        private UInt32Value f47108g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47109h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f47110i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47111j;

        /* renamed from: k  reason: collision with root package name */
        private RetryPriority f47112k;

        /* renamed from: l  reason: collision with root package name */
        private q2<RetryPriority, RetryPriority.b, f> f47113l;

        /* renamed from: m  reason: collision with root package name */
        private List<RetryHostPredicate> f47114m;

        /* renamed from: n  reason: collision with root package name */
        private l2<RetryHostPredicate, RetryHostPredicate.b, e> f47115n;

        /* renamed from: o  reason: collision with root package name */
        private long f47116o;

        /* renamed from: p  reason: collision with root package name */
        private u0.g f47117p;

        /* renamed from: q  reason: collision with root package name */
        private RetryBackOff f47118q;

        /* renamed from: r  reason: collision with root package name */
        private q2<RetryBackOff, RetryBackOff.b, d> f47119r;

        /* renamed from: s  reason: collision with root package name */
        private List<HeaderMatcher> f47120s;

        /* renamed from: t  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> f47121t;

        /* renamed from: u  reason: collision with root package name */
        private List<HeaderMatcher> f47122u;

        /* renamed from: v  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> f47123v;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f47106e & 4) == 0) {
                this.f47120s = new ArrayList(this.f47120s);
                this.f47106e |= 4;
            }
        }

        private void b0() {
            if ((this.f47106e & 8) == 0) {
                this.f47122u = new ArrayList(this.f47122u);
                this.f47106e |= 8;
            }
        }

        private void d0() {
            if ((this.f47106e & 2) == 0) {
                this.f47117p = GeneratedMessageV3.mutableCopy(this.f47117p);
                this.f47106e |= 2;
            }
        }

        private void e0() {
            if ((this.f47106e & 1) == 0) {
                this.f47114m = new ArrayList(this.f47114m);
                this.f47106e |= 1;
            }
        }

        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> h0() {
            if (this.f47121t == null) {
                this.f47121t = new l2<>(this.f47120s, (this.f47106e & 4) != 0, H(), O());
                this.f47120s = null;
            }
            return this.f47121t;
        }

        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> i0() {
            if (this.f47123v == null) {
                this.f47123v = new l2<>(this.f47122u, (this.f47106e & 8) != 0, H(), O());
                this.f47122u = null;
            }
            return this.f47123v;
        }

        private l2<RetryHostPredicate, RetryHostPredicate.b, e> j0() {
            if (this.f47115n == null) {
                this.f47115n = new l2<>(this.f47114m, (this.f47106e & 1) != 0, H(), O());
                this.f47114m = null;
            }
            return this.f47115n;
        }

        private void k0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                j0();
                h0();
                i0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.X.d(RetryPolicy.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RetryPolicy build() {
            RetryPolicy I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RetryPolicy I() {
            RetryPolicy retryPolicy = new RetryPolicy(this, (a) null);
            retryPolicy.retryOn_ = this.f47107f;
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47109h;
            if (q2Var == null) {
                retryPolicy.numRetries_ = this.f47108g;
            } else {
                retryPolicy.numRetries_ = q2Var.b();
            }
            q2<Duration, Duration.b, v> q2Var2 = this.f47111j;
            if (q2Var2 == null) {
                retryPolicy.perTryTimeout_ = this.f47110i;
            } else {
                retryPolicy.perTryTimeout_ = q2Var2.b();
            }
            q2<RetryPriority, RetryPriority.b, f> q2Var3 = this.f47113l;
            if (q2Var3 == null) {
                retryPolicy.retryPriority_ = this.f47112k;
            } else {
                retryPolicy.retryPriority_ = q2Var3.b();
            }
            l2<RetryHostPredicate, RetryHostPredicate.b, e> l2Var = this.f47115n;
            if (l2Var == null) {
                if ((this.f47106e & 1) != 0) {
                    this.f47114m = Collections.unmodifiableList(this.f47114m);
                    this.f47106e &= -2;
                }
                retryPolicy.retryHostPredicate_ = this.f47114m;
            } else {
                retryPolicy.retryHostPredicate_ = l2Var.e();
            }
            retryPolicy.hostSelectionRetryMaxAttempts_ = this.f47116o;
            if ((this.f47106e & 2) != 0) {
                this.f47117p.C();
                this.f47106e &= -3;
            }
            retryPolicy.retriableStatusCodes_ = this.f47117p;
            q2<RetryBackOff, RetryBackOff.b, d> q2Var4 = this.f47119r;
            if (q2Var4 == null) {
                retryPolicy.retryBackOff_ = this.f47118q;
            } else {
                retryPolicy.retryBackOff_ = q2Var4.b();
            }
            l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> l2Var2 = this.f47121t;
            if (l2Var2 == null) {
                if ((this.f47106e & 4) != 0) {
                    this.f47120s = Collections.unmodifiableList(this.f47120s);
                    this.f47106e &= -5;
                }
                retryPolicy.retriableHeaders_ = this.f47120s;
            } else {
                retryPolicy.retriableHeaders_ = l2Var2.e();
            }
            l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> l2Var3 = this.f47123v;
            if (l2Var3 == null) {
                if ((this.f47106e & 8) != 0) {
                    this.f47122u = Collections.unmodifiableList(this.f47122u);
                    this.f47106e &= -9;
                }
                retryPolicy.retriableRequestHeaders_ = this.f47122u;
            } else {
                retryPolicy.retriableRequestHeaders_ = l2Var3.e();
            }
            Q();
            return retryPolicy;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public RetryPolicy getDefaultInstanceForType() {
            return RetryPolicy.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.W;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.access$5000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.n0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.n0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.RetryPolicy$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof RetryPolicy) {
                return n0((RetryPolicy) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c n0(RetryPolicy retryPolicy) {
            if (retryPolicy == RetryPolicy.getDefaultInstance()) {
                return this;
            }
            if (!retryPolicy.getRetryOn().isEmpty()) {
                this.f47107f = retryPolicy.retryOn_;
                R();
            }
            if (retryPolicy.hasNumRetries()) {
                o0(retryPolicy.getNumRetries());
            }
            if (retryPolicy.hasPerTryTimeout()) {
                q0(retryPolicy.getPerTryTimeout());
            }
            if (retryPolicy.hasRetryPriority()) {
                s0(retryPolicy.getRetryPriority());
            }
            if (this.f47115n == null) {
                if (!retryPolicy.retryHostPredicate_.isEmpty()) {
                    if (this.f47114m.isEmpty()) {
                        this.f47114m = retryPolicy.retryHostPredicate_;
                        this.f47106e &= -2;
                    } else {
                        e0();
                        this.f47114m.addAll(retryPolicy.retryHostPredicate_);
                    }
                    R();
                }
            } else if (!retryPolicy.retryHostPredicate_.isEmpty()) {
                if (this.f47115n.k()) {
                    this.f47115n.f();
                    this.f47115n = null;
                    this.f47114m = retryPolicy.retryHostPredicate_;
                    this.f47106e &= -2;
                    this.f47115n = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f47115n.b(retryPolicy.retryHostPredicate_);
                }
            }
            if (retryPolicy.getHostSelectionRetryMaxAttempts() != 0) {
                v0(retryPolicy.getHostSelectionRetryMaxAttempts());
            }
            if (!retryPolicy.retriableStatusCodes_.isEmpty()) {
                if (this.f47117p.isEmpty()) {
                    this.f47117p = retryPolicy.retriableStatusCodes_;
                    this.f47106e &= -3;
                } else {
                    d0();
                    this.f47117p.addAll(retryPolicy.retriableStatusCodes_);
                }
                R();
            }
            if (retryPolicy.hasRetryBackOff()) {
                r0(retryPolicy.getRetryBackOff());
            }
            if (this.f47121t == null) {
                if (!retryPolicy.retriableHeaders_.isEmpty()) {
                    if (this.f47120s.isEmpty()) {
                        this.f47120s = retryPolicy.retriableHeaders_;
                        this.f47106e &= -5;
                    } else {
                        a0();
                        this.f47120s.addAll(retryPolicy.retriableHeaders_);
                    }
                    R();
                }
            } else if (!retryPolicy.retriableHeaders_.isEmpty()) {
                if (this.f47121t.k()) {
                    this.f47121t.f();
                    this.f47121t = null;
                    this.f47120s = retryPolicy.retriableHeaders_;
                    this.f47106e &= -5;
                    this.f47121t = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f47121t.b(retryPolicy.retriableHeaders_);
                }
            }
            if (this.f47123v == null) {
                if (!retryPolicy.retriableRequestHeaders_.isEmpty()) {
                    if (this.f47122u.isEmpty()) {
                        this.f47122u = retryPolicy.retriableRequestHeaders_;
                        this.f47106e &= -9;
                    } else {
                        b0();
                        this.f47122u.addAll(retryPolicy.retriableRequestHeaders_);
                    }
                    R();
                }
            } else if (!retryPolicy.retriableRequestHeaders_.isEmpty()) {
                if (this.f47123v.k()) {
                    this.f47123v.f();
                    this.f47123v = null;
                    this.f47122u = retryPolicy.retriableRequestHeaders_;
                    this.f47106e &= -9;
                    this.f47123v = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f47123v.b(retryPolicy.retriableRequestHeaders_);
                }
            }
            z(((GeneratedMessageV3) retryPolicy).unknownFields);
            R();
            return this;
        }

        public c o0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47109h;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47108g;
                if (uInt32Value2 != null) {
                    this.f47108g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47108g = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c q0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47111j;
            if (q2Var == null) {
                Duration duration2 = this.f47110i;
                if (duration2 != null) {
                    this.f47110i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47110i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c r0(RetryBackOff retryBackOff) {
            q2<RetryBackOff, RetryBackOff.b, d> q2Var = this.f47119r;
            if (q2Var == null) {
                RetryBackOff retryBackOff2 = this.f47118q;
                if (retryBackOff2 != null) {
                    this.f47118q = RetryBackOff.newBuilder(retryBackOff2).h0(retryBackOff).I();
                } else {
                    this.f47118q = retryBackOff;
                }
                R();
            } else {
                q2Var.e(retryBackOff);
            }
            return this;
        }

        public c s0(RetryPriority retryPriority) {
            q2<RetryPriority, RetryPriority.b, f> q2Var = this.f47113l;
            if (q2Var == null) {
                RetryPriority retryPriority2 = this.f47112k;
                if (retryPriority2 != null) {
                    this.f47112k = RetryPriority.newBuilder(retryPriority2).h0(retryPriority).I();
                } else {
                    this.f47112k = retryPriority;
                }
                R();
            } else {
                q2Var.e(retryPriority);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: u0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c v0(long j10) {
            this.f47116o = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: x0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f47107f = "";
            this.f47114m = Collections.emptyList();
            this.f47117p = RetryPolicy.access$5200();
            this.f47120s = Collections.emptyList();
            this.f47122u = Collections.emptyList();
            k0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f47107f = "";
            this.f47114m = Collections.emptyList();
            this.f47117p = RetryPolicy.access$5200();
            this.f47120s = Collections.emptyList();
            this.f47122u = Collections.emptyList();
            k0();
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

    /* synthetic */ RetryPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$5200() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static RetryPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.W;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RetryPolicy parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RetryPolicy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RetryPolicy> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RetryPolicy)) {
            return super.equals(obj);
        }
        RetryPolicy retryPolicy = (RetryPolicy) obj;
        if (getRetryOn().equals(retryPolicy.getRetryOn()) && hasNumRetries() == retryPolicy.hasNumRetries()) {
            if ((!hasNumRetries() || getNumRetries().equals(retryPolicy.getNumRetries())) && hasPerTryTimeout() == retryPolicy.hasPerTryTimeout()) {
                if ((!hasPerTryTimeout() || getPerTryTimeout().equals(retryPolicy.getPerTryTimeout())) && hasRetryPriority() == retryPolicy.hasRetryPriority()) {
                    if ((!hasRetryPriority() || getRetryPriority().equals(retryPolicy.getRetryPriority())) && getRetryHostPredicateList().equals(retryPolicy.getRetryHostPredicateList()) && getHostSelectionRetryMaxAttempts() == retryPolicy.getHostSelectionRetryMaxAttempts() && getRetriableStatusCodesList().equals(retryPolicy.getRetriableStatusCodesList()) && hasRetryBackOff() == retryPolicy.hasRetryBackOff()) {
                        return (!hasRetryBackOff() || getRetryBackOff().equals(retryPolicy.getRetryBackOff())) && getRetriableHeadersList().equals(retryPolicy.getRetriableHeadersList()) && getRetriableRequestHeadersList().equals(retryPolicy.getRetriableRequestHeadersList()) && this.unknownFields.equals(retryPolicy.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public long getHostSelectionRetryMaxAttempts() {
        return this.hostSelectionRetryMaxAttempts_;
    }

    public UInt32Value getNumRetries() {
        UInt32Value uInt32Value = this.numRetries_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getNumRetriesOrBuilder() {
        return getNumRetries();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RetryPolicy> getParserForType() {
        return PARSER;
    }

    public Duration getPerTryTimeout() {
        Duration duration = this.perTryTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getPerTryTimeoutOrBuilder() {
        return getPerTryTimeout();
    }

    public HeaderMatcher getRetriableHeaders(int i9) {
        return this.retriableHeaders_.get(i9);
    }

    public int getRetriableHeadersCount() {
        return this.retriableHeaders_.size();
    }

    public List<HeaderMatcher> getRetriableHeadersList() {
        return this.retriableHeaders_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e getRetriableHeadersOrBuilder(int i9) {
        return this.retriableHeaders_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> getRetriableHeadersOrBuilderList() {
        return this.retriableHeaders_;
    }

    public HeaderMatcher getRetriableRequestHeaders(int i9) {
        return this.retriableRequestHeaders_.get(i9);
    }

    public int getRetriableRequestHeadersCount() {
        return this.retriableRequestHeaders_.size();
    }

    public List<HeaderMatcher> getRetriableRequestHeadersList() {
        return this.retriableRequestHeaders_;
    }

    public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e getRetriableRequestHeadersOrBuilder(int i9) {
        return this.retriableRequestHeaders_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.e> getRetriableRequestHeadersOrBuilderList() {
        return this.retriableRequestHeaders_;
    }

    public int getRetriableStatusCodes(int i9) {
        return this.retriableStatusCodes_.getInt(i9);
    }

    public int getRetriableStatusCodesCount() {
        return this.retriableStatusCodes_.size();
    }

    public List<Integer> getRetriableStatusCodesList() {
        return this.retriableStatusCodes_;
    }

    public RetryBackOff getRetryBackOff() {
        RetryBackOff retryBackOff = this.retryBackOff_;
        return retryBackOff == null ? RetryBackOff.getDefaultInstance() : retryBackOff;
    }

    public d getRetryBackOffOrBuilder() {
        return getRetryBackOff();
    }

    public RetryHostPredicate getRetryHostPredicate(int i9) {
        return this.retryHostPredicate_.get(i9);
    }

    public int getRetryHostPredicateCount() {
        return this.retryHostPredicate_.size();
    }

    public List<RetryHostPredicate> getRetryHostPredicateList() {
        return this.retryHostPredicate_;
    }

    public e getRetryHostPredicateOrBuilder(int i9) {
        return this.retryHostPredicate_.get(i9);
    }

    public List<? extends e> getRetryHostPredicateOrBuilderList() {
        return this.retryHostPredicate_;
    }

    public String getRetryOn() {
        Object obj = this.retryOn_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.retryOn_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRetryOnBytes() {
        Object obj = this.retryOn_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.retryOn_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public RetryPriority getRetryPriority() {
        RetryPriority retryPriority = this.retryPriority_;
        return retryPriority == null ? RetryPriority.getDefaultInstance() : retryPriority;
    }

    public f getRetryPriorityOrBuilder() {
        return getRetryPriority();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.retryOn_) ? GeneratedMessageV3.computeStringSize(1, this.retryOn_) + 0 : 0;
        if (this.numRetries_ != null) {
            computeStringSize += CodedOutputStream.G(2, getNumRetries());
        }
        if (this.perTryTimeout_ != null) {
            computeStringSize += CodedOutputStream.G(3, getPerTryTimeout());
        }
        if (this.retryPriority_ != null) {
            computeStringSize += CodedOutputStream.G(4, getRetryPriority());
        }
        for (int i10 = 0; i10 < this.retryHostPredicate_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(5, this.retryHostPredicate_.get(i10));
        }
        long j10 = this.hostSelectionRetryMaxAttempts_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.z(6, j10);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.retriableStatusCodes_.size(); i12++) {
            i11 += CodedOutputStream.Z(this.retriableStatusCodes_.getInt(i12));
        }
        int i13 = computeStringSize + i11;
        if (!getRetriableStatusCodesList().isEmpty()) {
            i13 = i13 + 1 + CodedOutputStream.y(i11);
        }
        this.retriableStatusCodesMemoizedSerializedSize = i11;
        if (this.retryBackOff_ != null) {
            i13 += CodedOutputStream.G(8, getRetryBackOff());
        }
        for (int i14 = 0; i14 < this.retriableHeaders_.size(); i14++) {
            i13 += CodedOutputStream.G(9, this.retriableHeaders_.get(i14));
        }
        for (int i15 = 0; i15 < this.retriableRequestHeaders_.size(); i15++) {
            i13 += CodedOutputStream.G(10, this.retriableRequestHeaders_.get(i15));
        }
        int serializedSize = i13 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasNumRetries() {
        return this.numRetries_ != null;
    }

    public boolean hasPerTryTimeout() {
        return this.perTryTimeout_ != null;
    }

    public boolean hasRetryBackOff() {
        return this.retryBackOff_ != null;
    }

    public boolean hasRetryPriority() {
        return this.retryPriority_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRetryOn().hashCode();
        if (hasNumRetries()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getNumRetries().hashCode();
        }
        if (hasPerTryTimeout()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPerTryTimeout().hashCode();
        }
        if (hasRetryPriority()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getRetryPriority().hashCode();
        }
        if (getRetryHostPredicateCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getRetryHostPredicateList().hashCode();
        }
        int i10 = (((hashCode * 37) + 6) * 53) + u0.i(getHostSelectionRetryMaxAttempts());
        if (getRetriableStatusCodesCount() > 0) {
            i10 = (((i10 * 37) + 7) * 53) + getRetriableStatusCodesList().hashCode();
        }
        if (hasRetryBackOff()) {
            i10 = (((i10 * 37) + 8) * 53) + getRetryBackOff().hashCode();
        }
        if (getRetriableHeadersCount() > 0) {
            i10 = (((i10 * 37) + 9) * 53) + getRetriableHeadersList().hashCode();
        }
        if (getRetriableRequestHeadersCount() > 0) {
            i10 = (((i10 * 37) + 10) * 53) + getRetriableRequestHeadersList().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.X.d(RetryPolicy.class, c.class);
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
        return new RetryPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!GeneratedMessageV3.isStringEmpty(this.retryOn_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.retryOn_);
        }
        if (this.numRetries_ != null) {
            codedOutputStream.L0(2, getNumRetries());
        }
        if (this.perTryTimeout_ != null) {
            codedOutputStream.L0(3, getPerTryTimeout());
        }
        if (this.retryPriority_ != null) {
            codedOutputStream.L0(4, getRetryPriority());
        }
        for (int i9 = 0; i9 < this.retryHostPredicate_.size(); i9++) {
            codedOutputStream.L0(5, this.retryHostPredicate_.get(i9));
        }
        long j10 = this.hostSelectionRetryMaxAttempts_;
        if (j10 != 0) {
            codedOutputStream.J0(6, j10);
        }
        if (getRetriableStatusCodesList().size() > 0) {
            codedOutputStream.d1(58);
            codedOutputStream.d1(this.retriableStatusCodesMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.retriableStatusCodes_.size(); i10++) {
            codedOutputStream.d1(this.retriableStatusCodes_.getInt(i10));
        }
        if (this.retryBackOff_ != null) {
            codedOutputStream.L0(8, getRetryBackOff());
        }
        for (int i11 = 0; i11 < this.retriableHeaders_.size(); i11++) {
            codedOutputStream.L0(9, this.retriableHeaders_.get(i11));
        }
        for (int i12 = 0; i12 < this.retriableRequestHeaders_.size(); i12++) {
            codedOutputStream.L0(10, this.retriableRequestHeaders_.get(i12));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RetryPolicy(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(RetryPolicy retryPolicy) {
        return DEFAULT_INSTANCE.toBuilder().n0(retryPolicy);
    }

    public static RetryPolicy parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RetryPolicy(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.retriableStatusCodesMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RetryPolicy parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RetryPolicy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RetryPolicy getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).n0(this);
    }

    public static RetryPolicy parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static RetryPolicy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private RetryPolicy() {
        this.retriableStatusCodesMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.retryOn_ = "";
        this.retryHostPredicate_ = Collections.emptyList();
        this.retriableStatusCodes_ = GeneratedMessageV3.emptyIntList();
        this.retriableHeaders_ = Collections.emptyList();
        this.retriableRequestHeaders_ = Collections.emptyList();
    }

    public static RetryPolicy parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RetryPolicy parseFrom(InputStream inputStream) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RetryPolicy parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RetryPolicy parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RetryPolicy parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (RetryPolicy) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private RetryPolicy(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.retryOn_ = pVar.K();
                                continue;
                            case 18:
                                UInt32Value uInt32Value = this.numRetries_;
                                UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                                this.numRetries_ = uInt32Value2;
                                if (builder != null) {
                                    builder.g0(uInt32Value2);
                                    this.numRetries_ = builder.I();
                                } else {
                                    continue;
                                }
                            case 26:
                                Duration duration = this.perTryTimeout_;
                                Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                                Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                this.perTryTimeout_ = duration2;
                                if (builder2 != null) {
                                    builder2.e0(duration2);
                                    this.perTryTimeout_ = builder2.I();
                                } else {
                                    continue;
                                }
                            case 34:
                                RetryPriority retryPriority = this.retryPriority_;
                                RetryPriority.b builder3 = retryPriority != null ? retryPriority.toBuilder() : null;
                                RetryPriority retryPriority2 = (RetryPriority) pVar.B(RetryPriority.parser(), f0Var);
                                this.retryPriority_ = retryPriority2;
                                if (builder3 != null) {
                                    builder3.h0(retryPriority2);
                                    this.retryPriority_ = builder3.I();
                                } else {
                                    continue;
                                }
                            case 42:
                                if (!(z11 & true)) {
                                    this.retryHostPredicate_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.retryHostPredicate_.add((RetryHostPredicate) pVar.B(RetryHostPredicate.parser(), f0Var));
                                continue;
                            case 48:
                                this.hostSelectionRetryMaxAttempts_ = pVar.A();
                                continue;
                            case 56:
                                if (!(z11 & true)) {
                                    this.retriableStatusCodes_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                this.retriableStatusCodes_.D0(pVar.M());
                                continue;
                            case 58:
                                int q10 = pVar.q(pVar.D());
                                if (!(z11 & true) && pVar.e() > 0) {
                                    this.retriableStatusCodes_ = GeneratedMessageV3.newIntList();
                                    z11 |= true;
                                }
                                while (pVar.e() > 0) {
                                    this.retriableStatusCodes_.D0(pVar.M());
                                }
                                pVar.p(q10);
                                continue;
                                break;
                            case 66:
                                RetryBackOff retryBackOff = this.retryBackOff_;
                                RetryBackOff.b builder4 = retryBackOff != null ? retryBackOff.toBuilder() : null;
                                RetryBackOff retryBackOff2 = (RetryBackOff) pVar.B(RetryBackOff.parser(), f0Var);
                                this.retryBackOff_ = retryBackOff2;
                                if (builder4 != null) {
                                    builder4.h0(retryBackOff2);
                                    this.retryBackOff_ = builder4.I();
                                } else {
                                    continue;
                                }
                            case 74:
                                if (!(z11 & true)) {
                                    this.retriableHeaders_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.retriableHeaders_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
                                continue;
                            case 82:
                                if (!(z11 & true)) {
                                    this.retriableRequestHeaders_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.retriableRequestHeaders_.add((HeaderMatcher) pVar.B(HeaderMatcher.parser(), f0Var));
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
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                if (z11 & true) {
                    this.retryHostPredicate_ = Collections.unmodifiableList(this.retryHostPredicate_);
                }
                if (z11 & true) {
                    this.retriableStatusCodes_.C();
                }
                if (z11 & true) {
                    this.retriableHeaders_ = Collections.unmodifiableList(this.retriableHeaders_);
                }
                if (z11 & true) {
                    this.retriableRequestHeaders_ = Collections.unmodifiableList(this.retriableRequestHeaders_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
