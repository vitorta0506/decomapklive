package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

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
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HttpProtocolOptions extends GeneratedMessageV3 implements z {
    public static final int HEADERS_WITH_UNDERSCORES_ACTION_FIELD_NUMBER = 5;
    public static final int IDLE_TIMEOUT_FIELD_NUMBER = 1;
    public static final int MAX_CONNECTION_DURATION_FIELD_NUMBER = 3;
    public static final int MAX_HEADERS_COUNT_FIELD_NUMBER = 2;
    public static final int MAX_STREAM_DURATION_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int headersWithUnderscoresAction_;
    private Duration idleTimeout_;
    private Duration maxConnectionDuration_;
    private UInt32Value maxHeadersCount_;
    private Duration maxStreamDuration_;
    private byte memoizedIsInitialized;
    private static final HttpProtocolOptions DEFAULT_INSTANCE = new HttpProtocolOptions();
    private static final e2<HttpProtocolOptions> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum HeadersWithUnderscoresAction implements h2 {
        ALLOW(0),
        REJECT_REQUEST(1),
        DROP_HEADER(2),
        UNRECOGNIZED(-1);
        
        public static final int ALLOW_VALUE = 0;
        public static final int DROP_HEADER_VALUE = 2;
        public static final int REJECT_REQUEST_VALUE = 1;
        private final int value;
        private static final u0.d<HeadersWithUnderscoresAction> internalValueMap = new a();
        private static final HeadersWithUnderscoresAction[] VALUES = values();

        /* loaded from: classes6.dex */
        class a implements u0.d<HeadersWithUnderscoresAction> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public HeadersWithUnderscoresAction a(int i9) {
                return HeadersWithUnderscoresAction.forNumber(i9);
            }
        }

        HeadersWithUnderscoresAction(int i9) {
            this.value = i9;
        }

        public static HeadersWithUnderscoresAction forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return DROP_HEADER;
                }
                return REJECT_REQUEST;
            }
            return ALLOW;
        }

        public static final Descriptors.d getDescriptor() {
            return HttpProtocolOptions.getDescriptor().k().get(0);
        }

        public static u0.d<HeadersWithUnderscoresAction> internalGetValueMap() {
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
        public static HeadersWithUnderscoresAction valueOf(int i9) {
            return forNumber(i9);
        }

        public static HeadersWithUnderscoresAction valueOf(Descriptors.e eVar) {
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
    public class a extends com.google.protobuf.c<HttpProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements z {

        /* renamed from: e  reason: collision with root package name */
        private Duration f46581e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46582f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f46583g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46584h;

        /* renamed from: i  reason: collision with root package name */
        private UInt32Value f46585i;

        /* renamed from: j  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46586j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f46587k;

        /* renamed from: l  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f46588l;

        /* renamed from: m  reason: collision with root package name */
        private int f46589m;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g0.f46723f.d(HttpProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpProtocolOptions build() {
            HttpProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpProtocolOptions I() {
            HttpProtocolOptions httpProtocolOptions = new HttpProtocolOptions(this, (a) null);
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46582f;
            if (q2Var == null) {
                httpProtocolOptions.idleTimeout_ = this.f46581e;
            } else {
                httpProtocolOptions.idleTimeout_ = q2Var.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var2 = this.f46584h;
            if (q2Var2 == null) {
                httpProtocolOptions.maxConnectionDuration_ = this.f46583g;
            } else {
                httpProtocolOptions.maxConnectionDuration_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f46586j;
            if (q2Var3 == null) {
                httpProtocolOptions.maxHeadersCount_ = this.f46585i;
            } else {
                httpProtocolOptions.maxHeadersCount_ = q2Var3.b();
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var4 = this.f46588l;
            if (q2Var4 == null) {
                httpProtocolOptions.maxStreamDuration_ = this.f46587k;
            } else {
                httpProtocolOptions.maxStreamDuration_ = q2Var4.b();
            }
            httpProtocolOptions.headersWithUnderscoresAction_ = this.f46589m;
            Q();
            return httpProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HttpProtocolOptions getDefaultInstanceForType() {
            return HttpProtocolOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HttpProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HttpProtocolOptions) {
                return g0((HttpProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(HttpProtocolOptions httpProtocolOptions) {
            if (httpProtocolOptions == HttpProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (httpProtocolOptions.hasIdleTimeout()) {
                h0(httpProtocolOptions.getIdleTimeout());
            }
            if (httpProtocolOptions.hasMaxConnectionDuration()) {
                i0(httpProtocolOptions.getMaxConnectionDuration());
            }
            if (httpProtocolOptions.hasMaxHeadersCount()) {
                j0(httpProtocolOptions.getMaxHeadersCount());
            }
            if (httpProtocolOptions.hasMaxStreamDuration()) {
                k0(httpProtocolOptions.getMaxStreamDuration());
            }
            if (httpProtocolOptions.headersWithUnderscoresAction_ != 0) {
                n0(httpProtocolOptions.getHeadersWithUnderscoresActionValue());
            }
            z(((GeneratedMessageV3) httpProtocolOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g0.f46722e;
        }

        public b h0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46582f;
            if (q2Var == null) {
                Duration duration2 = this.f46581e;
                if (duration2 != null) {
                    this.f46581e = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46581e = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b i0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46584h;
            if (q2Var == null) {
                Duration duration2 = this.f46583g;
                if (duration2 != null) {
                    this.f46583g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46583g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46586j;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46585i;
                if (uInt32Value2 != null) {
                    this.f46585i = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46585i = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b k0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f46588l;
            if (q2Var == null) {
                Duration duration2 = this.f46587k;
                if (duration2 != null) {
                    this.f46587k = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f46587k = duration;
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

        public b n0(int i9) {
            this.f46589m = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f46589m = 0;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f46589m = 0;
            b0();
        }
    }

    /* synthetic */ HttpProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g0.f46722e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpProtocolOptions)) {
            return super.equals(obj);
        }
        HttpProtocolOptions httpProtocolOptions = (HttpProtocolOptions) obj;
        if (hasIdleTimeout() != httpProtocolOptions.hasIdleTimeout()) {
            return false;
        }
        if ((!hasIdleTimeout() || getIdleTimeout().equals(httpProtocolOptions.getIdleTimeout())) && hasMaxConnectionDuration() == httpProtocolOptions.hasMaxConnectionDuration()) {
            if ((!hasMaxConnectionDuration() || getMaxConnectionDuration().equals(httpProtocolOptions.getMaxConnectionDuration())) && hasMaxHeadersCount() == httpProtocolOptions.hasMaxHeadersCount()) {
                if ((!hasMaxHeadersCount() || getMaxHeadersCount().equals(httpProtocolOptions.getMaxHeadersCount())) && hasMaxStreamDuration() == httpProtocolOptions.hasMaxStreamDuration()) {
                    return (!hasMaxStreamDuration() || getMaxStreamDuration().equals(httpProtocolOptions.getMaxStreamDuration())) && this.headersWithUnderscoresAction_ == httpProtocolOptions.headersWithUnderscoresAction_ && this.unknownFields.equals(httpProtocolOptions.unknownFields);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public HeadersWithUnderscoresAction getHeadersWithUnderscoresAction() {
        HeadersWithUnderscoresAction valueOf = HeadersWithUnderscoresAction.valueOf(this.headersWithUnderscoresAction_);
        return valueOf == null ? HeadersWithUnderscoresAction.UNRECOGNIZED : valueOf;
    }

    public int getHeadersWithUnderscoresActionValue() {
        return this.headersWithUnderscoresAction_;
    }

    public Duration getIdleTimeout() {
        Duration duration = this.idleTimeout_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getIdleTimeoutOrBuilder() {
        return getIdleTimeout();
    }

    public Duration getMaxConnectionDuration() {
        Duration duration = this.maxConnectionDuration_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getMaxConnectionDurationOrBuilder() {
        return getMaxConnectionDuration();
    }

    public UInt32Value getMaxHeadersCount() {
        UInt32Value uInt32Value = this.maxHeadersCount_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxHeadersCountOrBuilder() {
        return getMaxHeadersCount();
    }

    public Duration getMaxStreamDuration() {
        Duration duration = this.maxStreamDuration_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public com.google.protobuf.v getMaxStreamDurationOrBuilder() {
        return getMaxStreamDuration();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.idleTimeout_ != null ? 0 + CodedOutputStream.G(1, getIdleTimeout()) : 0;
        if (this.maxHeadersCount_ != null) {
            G += CodedOutputStream.G(2, getMaxHeadersCount());
        }
        if (this.maxConnectionDuration_ != null) {
            G += CodedOutputStream.G(3, getMaxConnectionDuration());
        }
        if (this.maxStreamDuration_ != null) {
            G += CodedOutputStream.G(4, getMaxStreamDuration());
        }
        if (this.headersWithUnderscoresAction_ != HeadersWithUnderscoresAction.ALLOW.getNumber()) {
            G += CodedOutputStream.l(5, this.headersWithUnderscoresAction_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasIdleTimeout() {
        return this.idleTimeout_ != null;
    }

    public boolean hasMaxConnectionDuration() {
        return this.maxConnectionDuration_ != null;
    }

    public boolean hasMaxHeadersCount() {
        return this.maxHeadersCount_ != null;
    }

    public boolean hasMaxStreamDuration() {
        return this.maxStreamDuration_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasIdleTimeout()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getIdleTimeout().hashCode();
        }
        if (hasMaxConnectionDuration()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getMaxConnectionDuration().hashCode();
        }
        if (hasMaxHeadersCount()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getMaxHeadersCount().hashCode();
        }
        if (hasMaxStreamDuration()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getMaxStreamDuration().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 5) * 53) + this.headersWithUnderscoresAction_) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g0.f46723f.d(HttpProtocolOptions.class, b.class);
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
        return new HttpProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.idleTimeout_ != null) {
            codedOutputStream.L0(1, getIdleTimeout());
        }
        if (this.maxHeadersCount_ != null) {
            codedOutputStream.L0(2, getMaxHeadersCount());
        }
        if (this.maxConnectionDuration_ != null) {
            codedOutputStream.L0(3, getMaxConnectionDuration());
        }
        if (this.maxStreamDuration_ != null) {
            codedOutputStream.L0(4, getMaxStreamDuration());
        }
        if (this.headersWithUnderscoresAction_ != HeadersWithUnderscoresAction.ALLOW.getNumber()) {
            codedOutputStream.v0(5, this.headersWithUnderscoresAction_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HttpProtocolOptions httpProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(httpProtocolOptions);
    }

    public static HttpProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static HttpProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HttpProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
        this.headersWithUnderscoresAction_ = 0;
    }

    public static HttpProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HttpProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private HttpProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            Duration duration = this.idleTimeout_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.idleTimeout_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.idleTimeout_ = builder.I();
                            }
                        } else if (L == 18) {
                            UInt32Value uInt32Value = this.maxHeadersCount_;
                            UInt32Value.b builder2 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxHeadersCount_ = uInt32Value2;
                            if (builder2 != null) {
                                builder2.g0(uInt32Value2);
                                this.maxHeadersCount_ = builder2.I();
                            }
                        } else if (L == 26) {
                            Duration duration3 = this.maxConnectionDuration_;
                            Duration.b builder3 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxConnectionDuration_ = duration4;
                            if (builder3 != null) {
                                builder3.e0(duration4);
                                this.maxConnectionDuration_ = builder3.I();
                            }
                        } else if (L == 34) {
                            Duration duration5 = this.maxStreamDuration_;
                            Duration.b builder4 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxStreamDuration_ = duration6;
                            if (builder4 != null) {
                                builder4.e0(duration6);
                                this.maxStreamDuration_ = builder4.I();
                            }
                        } else if (L != 40) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.headersWithUnderscoresAction_ = pVar.u();
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

    public static HttpProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
