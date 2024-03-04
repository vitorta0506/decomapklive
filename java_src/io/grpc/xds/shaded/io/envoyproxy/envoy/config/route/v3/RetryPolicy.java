package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.Any;
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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.HeaderMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RetryPolicy extends GeneratedMessageV3 implements m {
    public static final int HOST_SELECTION_RETRY_MAX_ATTEMPTS_FIELD_NUMBER = 6;
    public static final int NUM_RETRIES_FIELD_NUMBER = 2;
    public static final int PER_TRY_TIMEOUT_FIELD_NUMBER = 3;
    public static final int RATE_LIMITED_RETRY_BACK_OFF_FIELD_NUMBER = 11;
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
    private RateLimitedRetryBackOff rateLimitedRetryBackOff_;
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
    public static final class RateLimitedRetryBackOff extends GeneratedMessageV3 implements d {
        public static final int MAX_INTERVAL_FIELD_NUMBER = 2;
        public static final int RESET_HEADERS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Duration maxInterval_;
        private byte memoizedIsInitialized;
        private List<ResetHeader> resetHeaders_;
        private static final RateLimitedRetryBackOff DEFAULT_INSTANCE = new RateLimitedRetryBackOff();
        private static final e2<RateLimitedRetryBackOff> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<RateLimitedRetryBackOff> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public RateLimitedRetryBackOff m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new RateLimitedRetryBackOff(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f49219e;

            /* renamed from: f  reason: collision with root package name */
            private List<ResetHeader> f49220f;

            /* renamed from: g  reason: collision with root package name */
            private l2<ResetHeader, ResetHeader.b, e> f49221g;

            /* renamed from: h  reason: collision with root package name */
            private Duration f49222h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49223i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f49219e & 1) == 0) {
                    this.f49220f = new ArrayList(this.f49220f);
                    this.f49219e |= 1;
                }
            }

            private l2<ResetHeader, ResetHeader.b, e> d0() {
                if (this.f49221g == null) {
                    this.f49221g = new l2<>(this.f49220f, (this.f49219e & 1) != 0, H(), O());
                    this.f49220f = null;
                }
                return this.f49221g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f49480h0.d(RateLimitedRetryBackOff.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public RateLimitedRetryBackOff build() {
                RateLimitedRetryBackOff I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public RateLimitedRetryBackOff I() {
                RateLimitedRetryBackOff rateLimitedRetryBackOff = new RateLimitedRetryBackOff(this, (a) null);
                int i9 = this.f49219e;
                l2<ResetHeader, ResetHeader.b, e> l2Var = this.f49221g;
                if (l2Var == null) {
                    if ((i9 & 1) != 0) {
                        this.f49220f = Collections.unmodifiableList(this.f49220f);
                        this.f49219e &= -2;
                    }
                    rateLimitedRetryBackOff.resetHeaders_ = this.f49220f;
                } else {
                    rateLimitedRetryBackOff.resetHeaders_ = l2Var.e();
                }
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49223i;
                if (q2Var == null) {
                    rateLimitedRetryBackOff.maxInterval_ = this.f49222h;
                } else {
                    rateLimitedRetryBackOff.maxInterval_ = q2Var.b();
                }
                Q();
                return rateLimitedRetryBackOff;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public RateLimitedRetryBackOff getDefaultInstanceForType() {
                return RateLimitedRetryBackOff.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff.access$4900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RateLimitedRetryBackOff r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RateLimitedRetryBackOff r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RateLimitedRetryBackOff.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RateLimitedRetryBackOff$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.f49478g0;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RateLimitedRetryBackOff) {
                    return i0((RateLimitedRetryBackOff) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(RateLimitedRetryBackOff rateLimitedRetryBackOff) {
                if (rateLimitedRetryBackOff == RateLimitedRetryBackOff.getDefaultInstance()) {
                    return this;
                }
                if (this.f49221g == null) {
                    if (!rateLimitedRetryBackOff.resetHeaders_.isEmpty()) {
                        if (this.f49220f.isEmpty()) {
                            this.f49220f = rateLimitedRetryBackOff.resetHeaders_;
                            this.f49219e &= -2;
                        } else {
                            a0();
                            this.f49220f.addAll(rateLimitedRetryBackOff.resetHeaders_);
                        }
                        R();
                    }
                } else if (!rateLimitedRetryBackOff.resetHeaders_.isEmpty()) {
                    if (this.f49221g.k()) {
                        this.f49221g.f();
                        this.f49221g = null;
                        this.f49220f = rateLimitedRetryBackOff.resetHeaders_;
                        this.f49219e &= -2;
                        this.f49221g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f49221g.b(rateLimitedRetryBackOff.resetHeaders_);
                    }
                }
                if (rateLimitedRetryBackOff.hasMaxInterval()) {
                    j0(rateLimitedRetryBackOff.getMaxInterval());
                }
                z(((GeneratedMessageV3) rateLimitedRetryBackOff).unknownFields);
                R();
                return this;
            }

            public b j0(Duration duration) {
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49223i;
                if (q2Var == null) {
                    Duration duration2 = this.f49222h;
                    if (duration2 != null) {
                        this.f49222h = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49222h = duration;
                    }
                    R();
                } else {
                    q2Var.e(duration);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
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
                this.f49220f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49220f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ RateLimitedRetryBackOff(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static RateLimitedRetryBackOff getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.f49478g0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RateLimitedRetryBackOff parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RateLimitedRetryBackOff parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<RateLimitedRetryBackOff> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RateLimitedRetryBackOff)) {
                return super.equals(obj);
            }
            RateLimitedRetryBackOff rateLimitedRetryBackOff = (RateLimitedRetryBackOff) obj;
            if (getResetHeadersList().equals(rateLimitedRetryBackOff.getResetHeadersList()) && hasMaxInterval() == rateLimitedRetryBackOff.hasMaxInterval()) {
                return (!hasMaxInterval() || getMaxInterval().equals(rateLimitedRetryBackOff.getMaxInterval())) && this.unknownFields.equals(rateLimitedRetryBackOff.unknownFields);
            }
            return false;
        }

        public Duration getMaxInterval() {
            Duration duration = this.maxInterval_;
            return duration == null ? Duration.getDefaultInstance() : duration;
        }

        public com.google.protobuf.v getMaxIntervalOrBuilder() {
            return getMaxInterval();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<RateLimitedRetryBackOff> getParserForType() {
            return PARSER;
        }

        public ResetHeader getResetHeaders(int i9) {
            return this.resetHeaders_.get(i9);
        }

        public int getResetHeadersCount() {
            return this.resetHeaders_.size();
        }

        public List<ResetHeader> getResetHeadersList() {
            return this.resetHeaders_;
        }

        public e getResetHeadersOrBuilder(int i9) {
            return this.resetHeaders_.get(i9);
        }

        public List<? extends e> getResetHeadersOrBuilderList() {
            return this.resetHeaders_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.resetHeaders_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.resetHeaders_.get(i11));
            }
            if (this.maxInterval_ != null) {
                i10 += CodedOutputStream.G(2, getMaxInterval());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
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
            if (getResetHeadersCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getResetHeadersList().hashCode();
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
            return o.f49480h0.d(RateLimitedRetryBackOff.class, b.class);
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
            return new RateLimitedRetryBackOff();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.resetHeaders_.size(); i9++) {
                codedOutputStream.L0(1, this.resetHeaders_.get(i9));
            }
            if (this.maxInterval_ != null) {
                codedOutputStream.L0(2, getMaxInterval());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RateLimitedRetryBackOff(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RateLimitedRetryBackOff rateLimitedRetryBackOff) {
            return DEFAULT_INSTANCE.toBuilder().i0(rateLimitedRetryBackOff);
        }

        public static RateLimitedRetryBackOff parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private RateLimitedRetryBackOff(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RateLimitedRetryBackOff parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static RateLimitedRetryBackOff parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public RateLimitedRetryBackOff getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static RateLimitedRetryBackOff parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private RateLimitedRetryBackOff() {
            this.memoizedIsInitialized = (byte) -1;
            this.resetHeaders_ = Collections.emptyList();
        }

        public static RateLimitedRetryBackOff parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static RateLimitedRetryBackOff parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static RateLimitedRetryBackOff parseFrom(InputStream inputStream) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private RateLimitedRetryBackOff(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 0) {
                                if (L == 10) {
                                    if (!(z11 & true)) {
                                        this.resetHeaders_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.resetHeaders_.add((ResetHeader) pVar.B(ResetHeader.parser(), f0Var));
                                } else if (L != 18) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Duration duration = this.maxInterval_;
                                    Duration.b builder = duration != null ? duration.toBuilder() : null;
                                    Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                                    this.maxInterval_ = duration2;
                                    if (builder != null) {
                                        builder.e0(duration2);
                                        this.maxInterval_ = builder.I();
                                    }
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
                        this.resetHeaders_ = Collections.unmodifiableList(this.resetHeaders_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static RateLimitedRetryBackOff parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static RateLimitedRetryBackOff parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static RateLimitedRetryBackOff parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (RateLimitedRetryBackOff) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public static final class ResetHeader extends GeneratedMessageV3 implements e {
        public static final int FORMAT_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int format_;
        private byte memoizedIsInitialized;
        private volatile Object name_;
        private static final ResetHeader DEFAULT_INSTANCE = new ResetHeader();
        private static final e2<ResetHeader> PARSER = new a();

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<ResetHeader> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public ResetHeader m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new ResetHeader(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private Object f49224e;

            /* renamed from: f  reason: collision with root package name */
            private int f49225f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f49476f0.d(ResetHeader.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public ResetHeader build() {
                ResetHeader I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public ResetHeader I() {
                ResetHeader resetHeader = new ResetHeader(this, (a) null);
                resetHeader.name_ = this.f49224e;
                resetHeader.format_ = this.f49225f;
                Q();
                return resetHeader;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public ResetHeader getDefaultInstanceForType() {
                return ResetHeader.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.ResetHeader.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.ResetHeader.access$3800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$ResetHeader r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.ResetHeader) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$ResetHeader r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.ResetHeader) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.ResetHeader.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$ResetHeader$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof ResetHeader) {
                    return g0((ResetHeader) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(ResetHeader resetHeader) {
                if (resetHeader == ResetHeader.getDefaultInstance()) {
                    return this;
                }
                if (!resetHeader.getName().isEmpty()) {
                    this.f49224e = resetHeader.name_;
                    R();
                }
                if (resetHeader.format_ != 0) {
                    j0(resetHeader.getFormatValue());
                }
                z(((GeneratedMessageV3) resetHeader).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.f49474e0;
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

            public b j0(int i9) {
                this.f49225f = i9;
                R();
                return this;
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
                this.f49224e = "";
                this.f49225f = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49224e = "";
                this.f49225f = 0;
                b0();
            }
        }

        /* synthetic */ ResetHeader(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static ResetHeader getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return o.f49474e0;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ResetHeader parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ResetHeader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<ResetHeader> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ResetHeader)) {
                return super.equals(obj);
            }
            ResetHeader resetHeader = (ResetHeader) obj;
            return getName().equals(resetHeader.getName()) && this.format_ == resetHeader.format_ && this.unknownFields.equals(resetHeader.unknownFields);
        }

        public ResetHeaderFormat getFormat() {
            ResetHeaderFormat valueOf = ResetHeaderFormat.valueOf(this.format_);
            return valueOf == null ? ResetHeaderFormat.UNRECOGNIZED : valueOf;
        }

        public int getFormatValue() {
            return this.format_;
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
        public e2<ResetHeader> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.name_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.name_);
            if (this.format_ != ResetHeaderFormat.SECONDS.getNumber()) {
                computeStringSize += CodedOutputStream.l(2, this.format_);
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + this.format_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.f49476f0.d(ResetHeader.class, b.class);
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
            return new ResetHeader();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            if (this.format_ != ResetHeaderFormat.SECONDS.getNumber()) {
                codedOutputStream.v0(2, this.format_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ ResetHeader(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(ResetHeader resetHeader) {
            return DEFAULT_INSTANCE.toBuilder().g0(resetHeader);
        }

        public static ResetHeader parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private ResetHeader(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ResetHeader parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static ResetHeader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public ResetHeader getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static ResetHeader parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private ResetHeader() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            this.format_ = 0;
        }

        public static ResetHeader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static ResetHeader parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static ResetHeader parseFrom(InputStream inputStream) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ResetHeader(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.name_ = pVar.K();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.format_ = pVar.u();
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

        public static ResetHeader parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static ResetHeader parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static ResetHeader parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (ResetHeader) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes6.dex */
    public enum ResetHeaderFormat implements h2 {
        SECONDS(0),
        UNIX_TIMESTAMP(1),
        UNRECOGNIZED(-1);
        
        public static final int SECONDS_VALUE = 0;
        public static final int UNIX_TIMESTAMP_VALUE = 1;
        private final int value;
        private static final u0.d<ResetHeaderFormat> internalValueMap = new a();
        private static final ResetHeaderFormat[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<ResetHeaderFormat> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public ResetHeaderFormat a(int i9) {
                return ResetHeaderFormat.forNumber(i9);
            }
        }

        ResetHeaderFormat(int i9) {
            this.value = i9;
        }

        public static ResetHeaderFormat forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return null;
                }
                return UNIX_TIMESTAMP;
            }
            return SECONDS;
        }

        public static final Descriptors.d getDescriptor() {
            return RetryPolicy.getDescriptor().k().get(0);
        }

        public static u0.d<ResetHeaderFormat> internalGetValueMap() {
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
        public static ResetHeaderFormat valueOf(int i9) {
            return forNumber(i9);
        }

        public static ResetHeaderFormat valueOf(Descriptors.e eVar) {
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
    public static final class RetryBackOff extends GeneratedMessageV3 implements f {
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
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private Duration f49226e;

            /* renamed from: f  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49227f;

            /* renamed from: g  reason: collision with root package name */
            private Duration f49228g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Duration, Duration.b, com.google.protobuf.v> f49229h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f49472d0.d(RetryBackOff.class, b.class);
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
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49227f;
                if (q2Var == null) {
                    retryBackOff.baseInterval_ = this.f49226e;
                } else {
                    retryBackOff.baseInterval_ = q2Var.b();
                }
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f49229h;
                if (q2Var2 == null) {
                    retryBackOff.maxInterval_ = this.f49228g;
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
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49227f;
                if (q2Var == null) {
                    Duration duration2 = this.f49226e;
                    if (duration2 != null) {
                        this.f49226e = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49226e = duration;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryBackOff.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryBackOff.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryBackOff r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryBackOff) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryBackOff r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryBackOff) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryBackOff.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryBackOff$b");
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
                return o.f49469c0;
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
                q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49229h;
                if (q2Var == null) {
                    Duration duration2 = this.f49228g;
                    if (duration2 != null) {
                        this.f49228g = Duration.newBuilder(duration2).e0(duration).I();
                    } else {
                        this.f49228g = duration;
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
            return o.f49469c0;
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
            return o.f49472d0.d(RetryBackOff.class, b.class);
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
    public static final class RetryHostPredicate extends GeneratedMessageV3 implements g {
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
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 3) {
                        return null;
                    }
                    return TYPED_CONFIG;
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
        public static final class b extends GeneratedMessageV3.b<b> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f49230e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49231f;

            /* renamed from: g  reason: collision with root package name */
            private Object f49232g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f49233h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.f49466b0.d(RetryHostPredicate.class, b.class);
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
                retryHostPredicate.name_ = this.f49232g;
                if (this.f49230e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49233h;
                    if (q2Var == null) {
                        retryHostPredicate.configType_ = this.f49231f;
                    } else {
                        retryHostPredicate.configType_ = q2Var.b();
                    }
                }
                retryHostPredicate.configTypeCase_ = this.f49230e;
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

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryHostPredicate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryHostPredicate.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryHostPredicate r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryHostPredicate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryHostPredicate r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryHostPredicate) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryHostPredicate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryHostPredicate$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RetryHostPredicate) {
                    return g0((RetryHostPredicate) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RetryHostPredicate retryHostPredicate) {
                if (retryHostPredicate == RetryHostPredicate.getDefaultInstance()) {
                    return this;
                }
                if (!retryHostPredicate.getName().isEmpty()) {
                    this.f49232g = retryHostPredicate.name_;
                    R();
                }
                if (b.f49239b[retryHostPredicate.getConfigTypeCase().ordinal()] == 1) {
                    h0(retryHostPredicate.getTypedConfig());
                }
                z(((GeneratedMessageV3) retryHostPredicate).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.f49463a0;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49233h;
                if (q2Var == null) {
                    if (this.f49230e == 3 && this.f49231f != Any.getDefaultInstance()) {
                        this.f49231f = Any.newBuilder((Any) this.f49231f).d0(any).I();
                    } else {
                        this.f49231f = any;
                    }
                    R();
                } else {
                    if (this.f49230e == 3) {
                        q2Var.e(any);
                    }
                    this.f49233h.g(any);
                }
                this.f49230e = 3;
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
                this.f49230e = 0;
                this.f49232g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49230e = 0;
                this.f49232g = "";
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
            return o.f49463a0;
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
                return (this.configTypeCase_ != 3 || getTypedConfig().equals(retryHostPredicate.getTypedConfig())) && this.unknownFields.equals(retryHostPredicate.unknownFields);
            }
            return false;
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

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (this.configTypeCase_ == 3) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.f49466b0.d(RetryHostPredicate.class, b.class);
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
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RetryHostPredicate(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RetryHostPredicate retryHostPredicate) {
            return DEFAULT_INSTANCE.toBuilder().g0(retryHostPredicate);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
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
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.name_ = pVar.K();
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.d0((Any) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 3;
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
    public static final class RetryPriority extends GeneratedMessageV3 implements h {
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
            TYPED_CONFIG(3),
            CONFIGTYPE_NOT_SET(0);
            
            private final int value;

            ConfigTypeCase(int i9) {
                this.value = i9;
            }

            public static ConfigTypeCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 3) {
                        return null;
                    }
                    return TYPED_CONFIG;
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
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private int f49234e;

            /* renamed from: f  reason: collision with root package name */
            private Object f49235f;

            /* renamed from: g  reason: collision with root package name */
            private Object f49236g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Any, Any.b, com.google.protobuf.f> f49237h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return o.Z.d(RetryPriority.class, b.class);
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
                retryPriority.name_ = this.f49236g;
                if (this.f49234e == 3) {
                    q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49237h;
                    if (q2Var == null) {
                        retryPriority.configType_ = this.f49235f;
                    } else {
                        retryPriority.configType_ = q2Var.b();
                    }
                }
                retryPriority.configTypeCase_ = this.f49234e;
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

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryPriority.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryPriority.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryPriority r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryPriority) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryPriority r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryPriority) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.RetryPriority.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$RetryPriority$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof RetryPriority) {
                    return g0((RetryPriority) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(RetryPriority retryPriority) {
                if (retryPriority == RetryPriority.getDefaultInstance()) {
                    return this;
                }
                if (!retryPriority.getName().isEmpty()) {
                    this.f49236g = retryPriority.name_;
                    R();
                }
                if (b.f49238a[retryPriority.getConfigTypeCase().ordinal()] == 1) {
                    h0(retryPriority.getTypedConfig());
                }
                z(((GeneratedMessageV3) retryPriority).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return o.Y;
            }

            public b h0(Any any) {
                q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f49237h;
                if (q2Var == null) {
                    if (this.f49234e == 3 && this.f49235f != Any.getDefaultInstance()) {
                        this.f49235f = Any.newBuilder((Any) this.f49235f).d0(any).I();
                    } else {
                        this.f49235f = any;
                    }
                    R();
                } else {
                    if (this.f49234e == 3) {
                        q2Var.e(any);
                    }
                    this.f49237h.g(any);
                }
                this.f49234e = 3;
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
                this.f49234e = 0;
                this.f49236g = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f49234e = 0;
                this.f49236g = "";
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
            return o.Y;
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
                return (this.configTypeCase_ != 3 || getTypedConfig().equals(retryPriority.getTypedConfig())) && this.unknownFields.equals(retryPriority.unknownFields);
            }
            return false;
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

        public boolean hasTypedConfig() {
            return this.configTypeCase_ == 3;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (this.configTypeCase_ == 3) {
                hashCode = (((hashCode * 37) + 3) * 53) + getTypedConfig().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return o.Z.d(RetryPriority.class, b.class);
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
            if (this.configTypeCase_ == 3) {
                codedOutputStream.L0(3, (Any) this.configType_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ RetryPriority(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(RetryPriority retryPriority) {
            return DEFAULT_INSTANCE.toBuilder().g0(retryPriority);
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
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
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    this.name_ = pVar.K();
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Any.b builder = this.configTypeCase_ == 3 ? ((Any) this.configType_).toBuilder() : null;
                                    o1 B = pVar.B(Any.parser(), f0Var);
                                    this.configType_ = B;
                                    if (builder != null) {
                                        builder.d0((Any) B);
                                        this.configType_ = builder.I();
                                    }
                                    this.configTypeCase_ = 3;
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
        static final /* synthetic */ int[] f49238a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f49239b;

        static {
            int[] iArr = new int[RetryHostPredicate.ConfigTypeCase.values().length];
            f49239b = iArr;
            try {
                iArr[RetryHostPredicate.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49239b[RetryHostPredicate.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[RetryPriority.ConfigTypeCase.values().length];
            f49238a = iArr2;
            try {
                iArr2[RetryPriority.ConfigTypeCase.TYPED_CONFIG.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49238a[RetryPriority.ConfigTypeCase.CONFIGTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements m {

        /* renamed from: e  reason: collision with root package name */
        private int f49240e;

        /* renamed from: f  reason: collision with root package name */
        private Object f49241f;

        /* renamed from: g  reason: collision with root package name */
        private UInt32Value f49242g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f49243h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f49244i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f49245j;

        /* renamed from: k  reason: collision with root package name */
        private RetryPriority f49246k;

        /* renamed from: l  reason: collision with root package name */
        private q2<RetryPriority, RetryPriority.b, h> f49247l;

        /* renamed from: m  reason: collision with root package name */
        private List<RetryHostPredicate> f49248m;

        /* renamed from: n  reason: collision with root package name */
        private l2<RetryHostPredicate, RetryHostPredicate.b, g> f49249n;

        /* renamed from: o  reason: collision with root package name */
        private long f49250o;

        /* renamed from: p  reason: collision with root package name */
        private u0.g f49251p;

        /* renamed from: q  reason: collision with root package name */
        private RetryBackOff f49252q;

        /* renamed from: r  reason: collision with root package name */
        private q2<RetryBackOff, RetryBackOff.b, f> f49253r;

        /* renamed from: s  reason: collision with root package name */
        private RateLimitedRetryBackOff f49254s;

        /* renamed from: t  reason: collision with root package name */
        private q2<RateLimitedRetryBackOff, RateLimitedRetryBackOff.b, d> f49255t;

        /* renamed from: u  reason: collision with root package name */
        private List<HeaderMatcher> f49256u;

        /* renamed from: v  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> f49257v;

        /* renamed from: w  reason: collision with root package name */
        private List<HeaderMatcher> f49258w;

        /* renamed from: x  reason: collision with root package name */
        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> f49259x;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f49240e & 4) == 0) {
                this.f49256u = new ArrayList(this.f49256u);
                this.f49240e |= 4;
            }
        }

        private void b0() {
            if ((this.f49240e & 8) == 0) {
                this.f49258w = new ArrayList(this.f49258w);
                this.f49240e |= 8;
            }
        }

        private void d0() {
            if ((this.f49240e & 2) == 0) {
                this.f49251p = GeneratedMessageV3.mutableCopy(this.f49251p);
                this.f49240e |= 2;
            }
        }

        private void e0() {
            if ((this.f49240e & 1) == 0) {
                this.f49248m = new ArrayList(this.f49248m);
                this.f49240e |= 1;
            }
        }

        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> h0() {
            if (this.f49257v == null) {
                this.f49257v = new l2<>(this.f49256u, (this.f49240e & 4) != 0, H(), O());
                this.f49256u = null;
            }
            return this.f49257v;
        }

        private l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> i0() {
            if (this.f49259x == null) {
                this.f49259x = new l2<>(this.f49258w, (this.f49240e & 8) != 0, H(), O());
                this.f49258w = null;
            }
            return this.f49259x;
        }

        private l2<RetryHostPredicate, RetryHostPredicate.b, g> j0() {
            if (this.f49249n == null) {
                this.f49249n = new l2<>(this.f49248m, (this.f49240e & 1) != 0, H(), O());
                this.f49248m = null;
            }
            return this.f49249n;
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
            return o.X.d(RetryPolicy.class, c.class);
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
            retryPolicy.retryOn_ = this.f49241f;
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49243h;
            if (q2Var == null) {
                retryPolicy.numRetries_ = this.f49242g;
            } else {
                retryPolicy.numRetries_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f49245j;
            if (q2Var2 == null) {
                retryPolicy.perTryTimeout_ = this.f49244i;
            } else {
                retryPolicy.perTryTimeout_ = q2Var2.b();
            }
            q2<RetryPriority, RetryPriority.b, h> q2Var3 = this.f49247l;
            if (q2Var3 == null) {
                retryPolicy.retryPriority_ = this.f49246k;
            } else {
                retryPolicy.retryPriority_ = q2Var3.b();
            }
            l2<RetryHostPredicate, RetryHostPredicate.b, g> l2Var = this.f49249n;
            if (l2Var == null) {
                if ((this.f49240e & 1) != 0) {
                    this.f49248m = Collections.unmodifiableList(this.f49248m);
                    this.f49240e &= -2;
                }
                retryPolicy.retryHostPredicate_ = this.f49248m;
            } else {
                retryPolicy.retryHostPredicate_ = l2Var.e();
            }
            retryPolicy.hostSelectionRetryMaxAttempts_ = this.f49250o;
            if ((this.f49240e & 2) != 0) {
                this.f49251p.C();
                this.f49240e &= -3;
            }
            retryPolicy.retriableStatusCodes_ = this.f49251p;
            q2<RetryBackOff, RetryBackOff.b, f> q2Var4 = this.f49253r;
            if (q2Var4 == null) {
                retryPolicy.retryBackOff_ = this.f49252q;
            } else {
                retryPolicy.retryBackOff_ = q2Var4.b();
            }
            q2<RateLimitedRetryBackOff, RateLimitedRetryBackOff.b, d> q2Var5 = this.f49255t;
            if (q2Var5 == null) {
                retryPolicy.rateLimitedRetryBackOff_ = this.f49254s;
            } else {
                retryPolicy.rateLimitedRetryBackOff_ = q2Var5.b();
            }
            l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> l2Var2 = this.f49257v;
            if (l2Var2 == null) {
                if ((this.f49240e & 4) != 0) {
                    this.f49256u = Collections.unmodifiableList(this.f49256u);
                    this.f49240e &= -5;
                }
                retryPolicy.retriableHeaders_ = this.f49256u;
            } else {
                retryPolicy.retriableHeaders_ = l2Var2.e();
            }
            l2<HeaderMatcher, HeaderMatcher.c, io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> l2Var3 = this.f49259x;
            if (l2Var3 == null) {
                if ((this.f49240e & 8) != 0) {
                    this.f49258w = Collections.unmodifiableList(this.f49258w);
                    this.f49240e &= -9;
                }
                retryPolicy.retriableRequestHeaders_ = this.f49258w;
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
            return o.W;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.access$7100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.RetryPolicy$c");
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
                this.f49241f = retryPolicy.retryOn_;
                R();
            }
            if (retryPolicy.hasNumRetries()) {
                o0(retryPolicy.getNumRetries());
            }
            if (retryPolicy.hasPerTryTimeout()) {
                q0(retryPolicy.getPerTryTimeout());
            }
            if (retryPolicy.hasRetryPriority()) {
                t0(retryPolicy.getRetryPriority());
            }
            if (this.f49249n == null) {
                if (!retryPolicy.retryHostPredicate_.isEmpty()) {
                    if (this.f49248m.isEmpty()) {
                        this.f49248m = retryPolicy.retryHostPredicate_;
                        this.f49240e &= -2;
                    } else {
                        e0();
                        this.f49248m.addAll(retryPolicy.retryHostPredicate_);
                    }
                    R();
                }
            } else if (!retryPolicy.retryHostPredicate_.isEmpty()) {
                if (this.f49249n.k()) {
                    this.f49249n.f();
                    this.f49249n = null;
                    this.f49248m = retryPolicy.retryHostPredicate_;
                    this.f49240e &= -2;
                    this.f49249n = GeneratedMessageV3.alwaysUseFieldBuilders ? j0() : null;
                } else {
                    this.f49249n.b(retryPolicy.retryHostPredicate_);
                }
            }
            if (retryPolicy.getHostSelectionRetryMaxAttempts() != 0) {
                x0(retryPolicy.getHostSelectionRetryMaxAttempts());
            }
            if (!retryPolicy.retriableStatusCodes_.isEmpty()) {
                if (this.f49251p.isEmpty()) {
                    this.f49251p = retryPolicy.retriableStatusCodes_;
                    this.f49240e &= -3;
                } else {
                    d0();
                    this.f49251p.addAll(retryPolicy.retriableStatusCodes_);
                }
                R();
            }
            if (retryPolicy.hasRetryBackOff()) {
                s0(retryPolicy.getRetryBackOff());
            }
            if (retryPolicy.hasRateLimitedRetryBackOff()) {
                r0(retryPolicy.getRateLimitedRetryBackOff());
            }
            if (this.f49257v == null) {
                if (!retryPolicy.retriableHeaders_.isEmpty()) {
                    if (this.f49256u.isEmpty()) {
                        this.f49256u = retryPolicy.retriableHeaders_;
                        this.f49240e &= -5;
                    } else {
                        a0();
                        this.f49256u.addAll(retryPolicy.retriableHeaders_);
                    }
                    R();
                }
            } else if (!retryPolicy.retriableHeaders_.isEmpty()) {
                if (this.f49257v.k()) {
                    this.f49257v.f();
                    this.f49257v = null;
                    this.f49256u = retryPolicy.retriableHeaders_;
                    this.f49240e &= -5;
                    this.f49257v = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f49257v.b(retryPolicy.retriableHeaders_);
                }
            }
            if (this.f49259x == null) {
                if (!retryPolicy.retriableRequestHeaders_.isEmpty()) {
                    if (this.f49258w.isEmpty()) {
                        this.f49258w = retryPolicy.retriableRequestHeaders_;
                        this.f49240e &= -9;
                    } else {
                        b0();
                        this.f49258w.addAll(retryPolicy.retriableRequestHeaders_);
                    }
                    R();
                }
            } else if (!retryPolicy.retriableRequestHeaders_.isEmpty()) {
                if (this.f49259x.k()) {
                    this.f49259x.f();
                    this.f49259x = null;
                    this.f49258w = retryPolicy.retriableRequestHeaders_;
                    this.f49240e &= -9;
                    this.f49259x = GeneratedMessageV3.alwaysUseFieldBuilders ? i0() : null;
                } else {
                    this.f49259x.b(retryPolicy.retriableRequestHeaders_);
                }
            }
            z(((GeneratedMessageV3) retryPolicy).unknownFields);
            R();
            return this;
        }

        public c o0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f49243h;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f49242g;
                if (uInt32Value2 != null) {
                    this.f49242g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f49242g = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public c q0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f49245j;
            if (q2Var == null) {
                Duration duration2 = this.f49244i;
                if (duration2 != null) {
                    this.f49244i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f49244i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public c r0(RateLimitedRetryBackOff rateLimitedRetryBackOff) {
            q2<RateLimitedRetryBackOff, RateLimitedRetryBackOff.b, d> q2Var = this.f49255t;
            if (q2Var == null) {
                RateLimitedRetryBackOff rateLimitedRetryBackOff2 = this.f49254s;
                if (rateLimitedRetryBackOff2 != null) {
                    this.f49254s = RateLimitedRetryBackOff.newBuilder(rateLimitedRetryBackOff2).i0(rateLimitedRetryBackOff).I();
                } else {
                    this.f49254s = rateLimitedRetryBackOff;
                }
                R();
            } else {
                q2Var.e(rateLimitedRetryBackOff);
            }
            return this;
        }

        public c s0(RetryBackOff retryBackOff) {
            q2<RetryBackOff, RetryBackOff.b, f> q2Var = this.f49253r;
            if (q2Var == null) {
                RetryBackOff retryBackOff2 = this.f49252q;
                if (retryBackOff2 != null) {
                    this.f49252q = RetryBackOff.newBuilder(retryBackOff2).h0(retryBackOff).I();
                } else {
                    this.f49252q = retryBackOff;
                }
                R();
            } else {
                q2Var.e(retryBackOff);
            }
            return this;
        }

        public c t0(RetryPriority retryPriority) {
            q2<RetryPriority, RetryPriority.b, h> q2Var = this.f49247l;
            if (q2Var == null) {
                RetryPriority retryPriority2 = this.f49246k;
                if (retryPriority2 != null) {
                    this.f49246k = RetryPriority.newBuilder(retryPriority2).g0(retryPriority).I();
                } else {
                    this.f49246k = retryPriority;
                }
                R();
            } else {
                q2Var.e(retryPriority);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: u0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c x0(long j10) {
            this.f49250o = j10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: y0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f49241f = "";
            this.f49248m = Collections.emptyList();
            this.f49251p = RetryPolicy.access$7300();
            this.f49256u = Collections.emptyList();
            this.f49258w = Collections.emptyList();
            k0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49241f = "";
            this.f49248m = Collections.emptyList();
            this.f49251p = RetryPolicy.access$7300();
            this.f49256u = Collections.emptyList();
            this.f49258w = Collections.emptyList();
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

    /* loaded from: classes6.dex */
    public interface g extends r1 {
    }

    /* loaded from: classes6.dex */
    public interface h extends r1 {
    }

    /* synthetic */ RetryPolicy(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    static /* synthetic */ u0.g access$7300() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static RetryPolicy getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.W;
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
                        if ((!hasRetryBackOff() || getRetryBackOff().equals(retryPolicy.getRetryBackOff())) && hasRateLimitedRetryBackOff() == retryPolicy.hasRateLimitedRetryBackOff()) {
                            return (!hasRateLimitedRetryBackOff() || getRateLimitedRetryBackOff().equals(retryPolicy.getRateLimitedRetryBackOff())) && getRetriableHeadersList().equals(retryPolicy.getRetriableHeadersList()) && getRetriableRequestHeadersList().equals(retryPolicy.getRetriableRequestHeadersList()) && this.unknownFields.equals(retryPolicy.unknownFields);
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

    public com.google.protobuf.v getPerTryTimeoutOrBuilder() {
        return getPerTryTimeout();
    }

    public RateLimitedRetryBackOff getRateLimitedRetryBackOff() {
        RateLimitedRetryBackOff rateLimitedRetryBackOff = this.rateLimitedRetryBackOff_;
        return rateLimitedRetryBackOff == null ? RateLimitedRetryBackOff.getDefaultInstance() : rateLimitedRetryBackOff;
    }

    public d getRateLimitedRetryBackOffOrBuilder() {
        return getRateLimitedRetryBackOff();
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f getRetriableHeadersOrBuilder(int i9) {
        return this.retriableHeaders_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> getRetriableHeadersOrBuilderList() {
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

    public io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f getRetriableRequestHeadersOrBuilder(int i9) {
        return this.retriableRequestHeaders_.get(i9);
    }

    public List<? extends io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.f> getRetriableRequestHeadersOrBuilderList() {
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

    public f getRetryBackOffOrBuilder() {
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

    public g getRetryHostPredicateOrBuilder(int i9) {
        return this.retryHostPredicate_.get(i9);
    }

    public List<? extends g> getRetryHostPredicateOrBuilderList() {
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

    public h getRetryPriorityOrBuilder() {
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
        if (this.rateLimitedRetryBackOff_ != null) {
            i13 += CodedOutputStream.G(11, getRateLimitedRetryBackOff());
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

    public boolean hasRateLimitedRetryBackOff() {
        return this.rateLimitedRetryBackOff_ != null;
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
        if (hasRateLimitedRetryBackOff()) {
            i10 = (((i10 * 37) + 11) * 53) + getRateLimitedRetryBackOff().hashCode();
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
        return o.X.d(RetryPolicy.class, c.class);
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
        if (this.rateLimitedRetryBackOff_ != null) {
            codedOutputStream.L0(11, getRateLimitedRetryBackOff());
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
                                builder3.g0(retryPriority2);
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
                        case 90:
                            RateLimitedRetryBackOff rateLimitedRetryBackOff = this.rateLimitedRetryBackOff_;
                            RateLimitedRetryBackOff.b builder5 = rateLimitedRetryBackOff != null ? rateLimitedRetryBackOff.toBuilder() : null;
                            RateLimitedRetryBackOff rateLimitedRetryBackOff2 = (RateLimitedRetryBackOff) pVar.B(RateLimitedRetryBackOff.parser(), f0Var);
                            this.rateLimitedRetryBackOff_ = rateLimitedRetryBackOff2;
                            if (builder5 != null) {
                                builder5.i0(rateLimitedRetryBackOff2);
                                this.rateLimitedRetryBackOff_ = builder5.I();
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
