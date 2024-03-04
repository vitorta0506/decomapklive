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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class HttpUri extends GeneratedMessageV3 implements g0 {
    public static final int CLUSTER_FIELD_NUMBER = 2;
    private static final HttpUri DEFAULT_INSTANCE = new HttpUri();
    private static final e2<HttpUri> PARSER = new a();
    public static final int TIMEOUT_FIELD_NUMBER = 3;
    public static final int URI_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int httpUpstreamTypeCase_;
    private Object httpUpstreamType_;
    private byte memoizedIsInitialized;
    private Duration timeout_;
    private volatile Object uri_;

    /* loaded from: classes6.dex */
    public enum HttpUpstreamTypeCase implements u0.c {
        CLUSTER(2),
        HTTPUPSTREAMTYPE_NOT_SET(0);
        
        private final int value;

        HttpUpstreamTypeCase(int i9) {
            this.value = i9;
        }

        public static HttpUpstreamTypeCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    return null;
                }
                return CLUSTER;
            }
            return HTTPUPSTREAMTYPE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static HttpUpstreamTypeCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<HttpUri> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpUri m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpUri(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48045a;

        static {
            int[] iArr = new int[HttpUpstreamTypeCase.values().length];
            f48045a = iArr;
            try {
                iArr[HttpUpstreamTypeCase.CLUSTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48045a[HttpUpstreamTypeCase.HTTPUPSTREAMTYPE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements g0 {

        /* renamed from: e  reason: collision with root package name */
        private int f48046e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48047f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48048g;

        /* renamed from: h  reason: collision with root package name */
        private Duration f48049h;

        /* renamed from: i  reason: collision with root package name */
        private q2<Duration, Duration.b, com.google.protobuf.v> f48050i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return h0.f48237b.d(HttpUri.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpUri build() {
            HttpUri I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpUri I() {
            HttpUri httpUri = new HttpUri(this, (a) null);
            httpUri.uri_ = this.f48048g;
            if (this.f48046e == 2) {
                httpUri.httpUpstreamType_ = this.f48047f;
            }
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48050i;
            if (q2Var == null) {
                httpUri.timeout_ = this.f48049h;
            } else {
                httpUri.timeout_ = q2Var.b();
            }
            httpUri.httpUpstreamTypeCase_ = this.f48046e;
            Q();
            return httpUri;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HttpUri getDefaultInstanceForType() {
            return HttpUri.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof HttpUri) {
                return g0((HttpUri) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(HttpUri httpUri) {
            if (httpUri == HttpUri.getDefaultInstance()) {
                return this;
            }
            if (!httpUri.getUri().isEmpty()) {
                this.f48048g = httpUri.uri_;
                R();
            }
            if (httpUri.hasTimeout()) {
                h0(httpUri.getTimeout());
            }
            if (b.f48045a[httpUri.getHttpUpstreamTypeCase().ordinal()] == 1) {
                this.f48046e = 2;
                this.f48047f = httpUri.httpUpstreamType_;
                R();
            }
            z(((GeneratedMessageV3) httpUri).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return h0.f48236a;
        }

        public c h0(Duration duration) {
            q2<Duration, Duration.b, com.google.protobuf.v> q2Var = this.f48050i;
            if (q2Var == null) {
                Duration duration2 = this.f48049h;
                if (duration2 != null) {
                    this.f48049h = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f48049h = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: k0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48046e = 0;
            this.f48048g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48046e = 0;
            this.f48048g = "";
            b0();
        }
    }

    /* synthetic */ HttpUri(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpUri getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return h0.f48236a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpUri parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpUri parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpUri> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpUri)) {
            return super.equals(obj);
        }
        HttpUri httpUri = (HttpUri) obj;
        if (getUri().equals(httpUri.getUri()) && hasTimeout() == httpUri.hasTimeout()) {
            if ((!hasTimeout() || getTimeout().equals(httpUri.getTimeout())) && getHttpUpstreamTypeCase().equals(httpUri.getHttpUpstreamTypeCase())) {
                return (this.httpUpstreamTypeCase_ != 2 || getCluster().equals(httpUri.getCluster())) && this.unknownFields.equals(httpUri.unknownFields);
            }
            return false;
        }
        return false;
    }

    public String getCluster() {
        String str = this.httpUpstreamTypeCase_ == 2 ? this.httpUpstreamType_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.httpUpstreamTypeCase_ == 2) {
            this.httpUpstreamType_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getClusterBytes() {
        String str = this.httpUpstreamTypeCase_ == 2 ? this.httpUpstreamType_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.httpUpstreamTypeCase_ == 2) {
                this.httpUpstreamType_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public HttpUpstreamTypeCase getHttpUpstreamTypeCase() {
        return HttpUpstreamTypeCase.forNumber(this.httpUpstreamTypeCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpUri> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.uri_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.uri_);
        if (this.httpUpstreamTypeCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.httpUpstreamType_);
        }
        if (this.timeout_ != null) {
            computeStringSize += CodedOutputStream.G(3, getTimeout());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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

    public String getUri() {
        Object obj = this.uri_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.uri_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUriBytes() {
        Object obj = this.uri_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.uri_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasCluster() {
        return this.httpUpstreamTypeCase_ == 2;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUri().hashCode();
        if (hasTimeout()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getTimeout().hashCode();
        }
        if (this.httpUpstreamTypeCase_ == 2) {
            hashCode = (((hashCode * 37) + 2) * 53) + getCluster().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return h0.f48237b.d(HttpUri.class, c.class);
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
        return new HttpUri();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.uri_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.uri_);
        }
        if (this.httpUpstreamTypeCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.httpUpstreamType_);
        }
        if (this.timeout_ != null) {
            codedOutputStream.L0(3, getTimeout());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpUri(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(HttpUri httpUri) {
        return DEFAULT_INSTANCE.toBuilder().g0(httpUri);
    }

    public static HttpUri parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpUri(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.httpUpstreamTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpUri parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpUri parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpUri getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static HttpUri parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static HttpUri parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private HttpUri() {
        this.httpUpstreamTypeCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.uri_ = "";
    }

    public static HttpUri parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpUri parseFrom(InputStream inputStream) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpUri parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private HttpUri(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.uri_ = pVar.K();
                        } else if (L == 18) {
                            String K = pVar.K();
                            this.httpUpstreamTypeCase_ = 2;
                            this.httpUpstreamType_ = K;
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Duration duration = this.timeout_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.timeout_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.timeout_ = builder.I();
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

    public static HttpUri parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpUri parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (HttpUri) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
