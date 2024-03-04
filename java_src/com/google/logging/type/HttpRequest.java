package com.google.logging.type;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class HttpRequest extends GeneratedMessageV3 implements r1 {
    public static final int CACHE_FILL_BYTES_FIELD_NUMBER = 12;
    public static final int CACHE_HIT_FIELD_NUMBER = 9;
    public static final int CACHE_LOOKUP_FIELD_NUMBER = 11;
    public static final int CACHE_VALIDATED_WITH_ORIGIN_SERVER_FIELD_NUMBER = 10;
    public static final int LATENCY_FIELD_NUMBER = 14;
    public static final int PROTOCOL_FIELD_NUMBER = 15;
    public static final int REFERER_FIELD_NUMBER = 8;
    public static final int REMOTE_IP_FIELD_NUMBER = 7;
    public static final int REQUEST_METHOD_FIELD_NUMBER = 1;
    public static final int REQUEST_SIZE_FIELD_NUMBER = 3;
    public static final int REQUEST_URL_FIELD_NUMBER = 2;
    public static final int RESPONSE_SIZE_FIELD_NUMBER = 5;
    public static final int SERVER_IP_FIELD_NUMBER = 13;
    public static final int STATUS_FIELD_NUMBER = 4;
    public static final int USER_AGENT_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private long cacheFillBytes_;
    private boolean cacheHit_;
    private boolean cacheLookup_;
    private boolean cacheValidatedWithOriginServer_;
    private Duration latency_;
    private byte memoizedIsInitialized;
    private volatile Object protocol_;
    private volatile Object referer_;
    private volatile Object remoteIp_;
    private volatile Object requestMethod_;
    private long requestSize_;
    private volatile Object requestUrl_;
    private long responseSize_;
    private volatile Object serverIp_;
    private int status_;
    private volatile Object userAgent_;
    private static final HttpRequest DEFAULT_INSTANCE = new HttpRequest();
    private static final e2<HttpRequest> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends c<HttpRequest> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public HttpRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new HttpRequest(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f14209e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14210f;

        /* renamed from: g  reason: collision with root package name */
        private long f14211g;

        /* renamed from: h  reason: collision with root package name */
        private int f14212h;

        /* renamed from: i  reason: collision with root package name */
        private long f14213i;

        /* renamed from: j  reason: collision with root package name */
        private Object f14214j;

        /* renamed from: k  reason: collision with root package name */
        private Object f14215k;

        /* renamed from: l  reason: collision with root package name */
        private Object f14216l;

        /* renamed from: m  reason: collision with root package name */
        private Object f14217m;

        /* renamed from: n  reason: collision with root package name */
        private Duration f14218n;

        /* renamed from: o  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f14219o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f14220p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f14221q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f14222r;

        /* renamed from: s  reason: collision with root package name */
        private long f14223s;

        /* renamed from: t  reason: collision with root package name */
        private Object f14224t;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return com.google.logging.type.a.f14226b.d(HttpRequest.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public HttpRequest build() {
            HttpRequest I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public HttpRequest I() {
            HttpRequest httpRequest = new HttpRequest(this, (a) null);
            httpRequest.requestMethod_ = this.f14209e;
            httpRequest.requestUrl_ = this.f14210f;
            httpRequest.requestSize_ = this.f14211g;
            httpRequest.status_ = this.f14212h;
            httpRequest.responseSize_ = this.f14213i;
            httpRequest.userAgent_ = this.f14214j;
            httpRequest.remoteIp_ = this.f14215k;
            httpRequest.serverIp_ = this.f14216l;
            httpRequest.referer_ = this.f14217m;
            q2<Duration, Duration.b, v> q2Var = this.f14219o;
            if (q2Var == null) {
                httpRequest.latency_ = this.f14218n;
            } else {
                httpRequest.latency_ = q2Var.b();
            }
            httpRequest.cacheLookup_ = this.f14220p;
            httpRequest.cacheHit_ = this.f14221q;
            httpRequest.cacheValidatedWithOriginServer_ = this.f14222r;
            httpRequest.cacheFillBytes_ = this.f14223s;
            httpRequest.protocol_ = this.f14224t;
            Q();
            return httpRequest;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public HttpRequest getDefaultInstanceForType() {
            return HttpRequest.getDefaultInstance();
        }

        public b d0(HttpRequest httpRequest) {
            if (httpRequest == HttpRequest.getDefaultInstance()) {
                return this;
            }
            if (!httpRequest.getRequestMethod().isEmpty()) {
                this.f14209e = httpRequest.requestMethod_;
                R();
            }
            if (!httpRequest.getRequestUrl().isEmpty()) {
                this.f14210f = httpRequest.requestUrl_;
                R();
            }
            if (httpRequest.getRequestSize() != 0) {
                o0(httpRequest.getRequestSize());
            }
            if (httpRequest.getStatus() != 0) {
                r0(httpRequest.getStatus());
            }
            if (httpRequest.getResponseSize() != 0) {
                q0(httpRequest.getResponseSize());
            }
            if (!httpRequest.getUserAgent().isEmpty()) {
                this.f14214j = httpRequest.userAgent_;
                R();
            }
            if (!httpRequest.getRemoteIp().isEmpty()) {
                this.f14215k = httpRequest.remoteIp_;
                R();
            }
            if (!httpRequest.getServerIp().isEmpty()) {
                this.f14216l = httpRequest.serverIp_;
                R();
            }
            if (!httpRequest.getReferer().isEmpty()) {
                this.f14217m = httpRequest.referer_;
                R();
            }
            if (httpRequest.hasLatency()) {
                h0(httpRequest.getLatency());
            }
            if (httpRequest.getCacheLookup()) {
                l0(httpRequest.getCacheLookup());
            }
            if (httpRequest.getCacheHit()) {
                k0(httpRequest.getCacheHit());
            }
            if (httpRequest.getCacheValidatedWithOriginServer()) {
                m0(httpRequest.getCacheValidatedWithOriginServer());
            }
            if (httpRequest.getCacheFillBytes() != 0) {
                j0(httpRequest.getCacheFillBytes());
            }
            if (!httpRequest.getProtocol().isEmpty()) {
                this.f14224t = httpRequest.protocol_;
                R();
            }
            z(((GeneratedMessageV3) httpRequest).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.logging.type.HttpRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.logging.type.HttpRequest.access$2000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.logging.type.HttpRequest r3 = (com.google.logging.type.HttpRequest) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.d0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.google.logging.type.HttpRequest r4 = (com.google.logging.type.HttpRequest) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.d0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.logging.type.HttpRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.logging.type.HttpRequest$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof HttpRequest) {
                return d0((HttpRequest) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return com.google.logging.type.a.f14225a;
        }

        public b h0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f14219o;
            if (q2Var == null) {
                Duration duration2 = this.f14218n;
                if (duration2 != null) {
                    this.f14218n = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f14218n = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b j0(long j10) {
            this.f14223s = j10;
            R();
            return this;
        }

        public b k0(boolean z10) {
            this.f14221q = z10;
            R();
            return this;
        }

        public b l0(boolean z10) {
            this.f14220p = z10;
            R();
            return this;
        }

        public b m0(boolean z10) {
            this.f14222r = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        public b o0(long j10) {
            this.f14211g = j10;
            R();
            return this;
        }

        public b q0(long j10) {
            this.f14213i = j10;
            R();
            return this;
        }

        public b r0(int i9) {
            this.f14212h = i9;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: s0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14209e = "";
            this.f14210f = "";
            this.f14214j = "";
            this.f14215k = "";
            this.f14216l = "";
            this.f14217m = "";
            this.f14224t = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14209e = "";
            this.f14210f = "";
            this.f14214j = "";
            this.f14215k = "";
            this.f14216l = "";
            this.f14217m = "";
            this.f14224t = "";
            b0();
        }
    }

    /* synthetic */ HttpRequest(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static HttpRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return com.google.logging.type.a.f14225a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HttpRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HttpRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<HttpRequest> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HttpRequest)) {
            return super.equals(obj);
        }
        HttpRequest httpRequest = (HttpRequest) obj;
        if (getRequestMethod().equals(httpRequest.getRequestMethod()) && getRequestUrl().equals(httpRequest.getRequestUrl()) && getRequestSize() == httpRequest.getRequestSize() && getStatus() == httpRequest.getStatus() && getResponseSize() == httpRequest.getResponseSize() && getUserAgent().equals(httpRequest.getUserAgent()) && getRemoteIp().equals(httpRequest.getRemoteIp()) && getServerIp().equals(httpRequest.getServerIp()) && getReferer().equals(httpRequest.getReferer()) && hasLatency() == httpRequest.hasLatency()) {
            return (!hasLatency() || getLatency().equals(httpRequest.getLatency())) && getCacheLookup() == httpRequest.getCacheLookup() && getCacheHit() == httpRequest.getCacheHit() && getCacheValidatedWithOriginServer() == httpRequest.getCacheValidatedWithOriginServer() && getCacheFillBytes() == httpRequest.getCacheFillBytes() && getProtocol().equals(httpRequest.getProtocol()) && this.unknownFields.equals(httpRequest.unknownFields);
        }
        return false;
    }

    public long getCacheFillBytes() {
        return this.cacheFillBytes_;
    }

    public boolean getCacheHit() {
        return this.cacheHit_;
    }

    public boolean getCacheLookup() {
        return this.cacheLookup_;
    }

    public boolean getCacheValidatedWithOriginServer() {
        return this.cacheValidatedWithOriginServer_;
    }

    public Duration getLatency() {
        Duration duration = this.latency_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getLatencyOrBuilder() {
        return getLatency();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<HttpRequest> getParserForType() {
        return PARSER;
    }

    public String getProtocol() {
        Object obj = this.protocol_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.protocol_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getProtocolBytes() {
        Object obj = this.protocol_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.protocol_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getReferer() {
        Object obj = this.referer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.referer_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRefererBytes() {
        Object obj = this.referer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.referer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getRemoteIp() {
        Object obj = this.remoteIp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.remoteIp_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRemoteIpBytes() {
        Object obj = this.remoteIp_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.remoteIp_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getRequestMethod() {
        Object obj = this.requestMethod_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestMethod_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRequestMethodBytes() {
        Object obj = this.requestMethod_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.requestMethod_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getRequestSize() {
        return this.requestSize_;
    }

    public String getRequestUrl() {
        Object obj = this.requestUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.requestUrl_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRequestUrlBytes() {
        Object obj = this.requestUrl_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.requestUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public long getResponseSize() {
        return this.responseSize_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.requestMethod_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.requestMethod_);
        if (!GeneratedMessageV3.isStringEmpty(this.requestUrl_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.requestUrl_);
        }
        long j10 = this.requestSize_;
        if (j10 != 0) {
            computeStringSize += CodedOutputStream.z(3, j10);
        }
        int i10 = this.status_;
        if (i10 != 0) {
            computeStringSize += CodedOutputStream.x(4, i10);
        }
        long j11 = this.responseSize_;
        if (j11 != 0) {
            computeStringSize += CodedOutputStream.z(5, j11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.userAgent_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(6, this.userAgent_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.remoteIp_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(7, this.remoteIp_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.referer_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(8, this.referer_);
        }
        boolean z10 = this.cacheHit_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(9, z10);
        }
        boolean z11 = this.cacheValidatedWithOriginServer_;
        if (z11) {
            computeStringSize += CodedOutputStream.e(10, z11);
        }
        boolean z12 = this.cacheLookup_;
        if (z12) {
            computeStringSize += CodedOutputStream.e(11, z12);
        }
        long j12 = this.cacheFillBytes_;
        if (j12 != 0) {
            computeStringSize += CodedOutputStream.z(12, j12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serverIp_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(13, this.serverIp_);
        }
        if (this.latency_ != null) {
            computeStringSize += CodedOutputStream.G(14, getLatency());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(15, this.protocol_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getServerIp() {
        Object obj = this.serverIp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.serverIp_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getServerIpBytes() {
        Object obj = this.serverIp_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.serverIp_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int getStatus() {
        return this.status_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public String getUserAgent() {
        Object obj = this.userAgent_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.userAgent_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getUserAgentBytes() {
        Object obj = this.userAgent_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.userAgent_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasLatency() {
        return this.latency_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getRequestMethod().hashCode()) * 37) + 2) * 53) + getRequestUrl().hashCode()) * 37) + 3) * 53) + u0.i(getRequestSize())) * 37) + 4) * 53) + getStatus()) * 37) + 5) * 53) + u0.i(getResponseSize())) * 37) + 6) * 53) + getUserAgent().hashCode()) * 37) + 7) * 53) + getRemoteIp().hashCode()) * 37) + 13) * 53) + getServerIp().hashCode()) * 37) + 8) * 53) + getReferer().hashCode();
        if (hasLatency()) {
            hashCode = (((hashCode * 37) + 14) * 53) + getLatency().hashCode();
        }
        int d10 = (((((((((((((((((((((hashCode * 37) + 11) * 53) + u0.d(getCacheLookup())) * 37) + 9) * 53) + u0.d(getCacheHit())) * 37) + 10) * 53) + u0.d(getCacheValidatedWithOriginServer())) * 37) + 12) * 53) + u0.i(getCacheFillBytes())) * 37) + 15) * 53) + getProtocol().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return com.google.logging.type.a.f14226b.d(HttpRequest.class, b.class);
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
        return new HttpRequest();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.requestMethod_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.requestMethod_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.requestUrl_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.requestUrl_);
        }
        long j10 = this.requestSize_;
        if (j10 != 0) {
            codedOutputStream.J0(3, j10);
        }
        int i9 = this.status_;
        if (i9 != 0) {
            codedOutputStream.H0(4, i9);
        }
        long j11 = this.responseSize_;
        if (j11 != 0) {
            codedOutputStream.J0(5, j11);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.userAgent_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.userAgent_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.remoteIp_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.remoteIp_);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.referer_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.referer_);
        }
        boolean z10 = this.cacheHit_;
        if (z10) {
            codedOutputStream.n0(9, z10);
        }
        boolean z11 = this.cacheValidatedWithOriginServer_;
        if (z11) {
            codedOutputStream.n0(10, z11);
        }
        boolean z12 = this.cacheLookup_;
        if (z12) {
            codedOutputStream.n0(11, z12);
        }
        long j12 = this.cacheFillBytes_;
        if (j12 != 0) {
            codedOutputStream.J0(12, j12);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.serverIp_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.serverIp_);
        }
        if (this.latency_ != null) {
            codedOutputStream.L0(14, getLatency());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.protocol_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 15, this.protocol_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ HttpRequest(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(HttpRequest httpRequest) {
        return DEFAULT_INSTANCE.toBuilder().d0(httpRequest);
    }

    public static HttpRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private HttpRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HttpRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public HttpRequest getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
    }

    public static HttpRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private HttpRequest() {
        this.memoizedIsInitialized = (byte) -1;
        this.requestMethod_ = "";
        this.requestUrl_ = "";
        this.userAgent_ = "";
        this.remoteIp_ = "";
        this.serverIp_ = "";
        this.referer_ = "";
        this.protocol_ = "";
    }

    public static HttpRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static HttpRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static HttpRequest parseFrom(InputStream inputStream) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HttpRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static HttpRequest parseFrom(p pVar) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static HttpRequest parseFrom(p pVar, f0 f0Var) throws IOException {
        return (HttpRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }

    private HttpRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            this.requestMethod_ = pVar.K();
                            continue;
                        case 18:
                            this.requestUrl_ = pVar.K();
                            continue;
                        case 24:
                            this.requestSize_ = pVar.A();
                            continue;
                        case 32:
                            this.status_ = pVar.z();
                            continue;
                        case 40:
                            this.responseSize_ = pVar.A();
                            continue;
                        case 50:
                            this.userAgent_ = pVar.K();
                            continue;
                        case 58:
                            this.remoteIp_ = pVar.K();
                            continue;
                        case 66:
                            this.referer_ = pVar.K();
                            continue;
                        case 72:
                            this.cacheHit_ = pVar.r();
                            continue;
                        case 80:
                            this.cacheValidatedWithOriginServer_ = pVar.r();
                            continue;
                        case 88:
                            this.cacheLookup_ = pVar.r();
                            continue;
                        case 96:
                            this.cacheFillBytes_ = pVar.A();
                            continue;
                        case 106:
                            this.serverIp_ = pVar.K();
                            continue;
                        case 114:
                            Duration duration = this.latency_;
                            Duration.b builder = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.latency_ = duration2;
                            if (builder != null) {
                                builder.e0(duration2);
                                this.latency_ = builder.I();
                            } else {
                                continue;
                            }
                        case 122:
                            this.protocol_ = pVar.K();
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
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }
}
