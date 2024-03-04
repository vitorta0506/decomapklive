package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.HttpUri;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RetryPolicy;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RemoteDataSource extends GeneratedMessageV3 implements s0 {
    public static final int HTTP_URI_FIELD_NUMBER = 1;
    public static final int RETRY_POLICY_FIELD_NUMBER = 3;
    public static final int SHA256_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private HttpUri httpUri_;
    private byte memoizedIsInitialized;
    private RetryPolicy retryPolicy_;
    private volatile Object sha256_;
    private static final RemoteDataSource DEFAULT_INSTANCE = new RemoteDataSource();
    private static final e2<RemoteDataSource> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RemoteDataSource> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RemoteDataSource m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RemoteDataSource(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements s0 {

        /* renamed from: e  reason: collision with root package name */
        private HttpUri f48098e;

        /* renamed from: f  reason: collision with root package name */
        private q2<HttpUri, HttpUri.c, g0> f48099f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48100g;

        /* renamed from: h  reason: collision with root package name */
        private RetryPolicy f48101h;

        /* renamed from: i  reason: collision with root package name */
        private q2<RetryPolicy, RetryPolicy.b, u0> f48102i;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.L.d(RemoteDataSource.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RemoteDataSource build() {
            RemoteDataSource I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RemoteDataSource I() {
            RemoteDataSource remoteDataSource = new RemoteDataSource(this, (a) null);
            q2<HttpUri, HttpUri.c, g0> q2Var = this.f48099f;
            if (q2Var == null) {
                remoteDataSource.httpUri_ = this.f48098e;
            } else {
                remoteDataSource.httpUri_ = q2Var.b();
            }
            remoteDataSource.sha256_ = this.f48100g;
            q2<RetryPolicy, RetryPolicy.b, u0> q2Var2 = this.f48102i;
            if (q2Var2 == null) {
                remoteDataSource.retryPolicy_ = this.f48101h;
            } else {
                remoteDataSource.retryPolicy_ = q2Var2.b();
            }
            Q();
            return remoteDataSource;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RemoteDataSource getDefaultInstanceForType() {
            return RemoteDataSource.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RemoteDataSource$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof RemoteDataSource) {
                return g0((RemoteDataSource) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RemoteDataSource remoteDataSource) {
            if (remoteDataSource == RemoteDataSource.getDefaultInstance()) {
                return this;
            }
            if (remoteDataSource.hasHttpUri()) {
                h0(remoteDataSource.getHttpUri());
            }
            if (!remoteDataSource.getSha256().isEmpty()) {
                this.f48100g = remoteDataSource.sha256_;
                R();
            }
            if (remoteDataSource.hasRetryPolicy()) {
                i0(remoteDataSource.getRetryPolicy());
            }
            z(((GeneratedMessageV3) remoteDataSource).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.K;
        }

        public b h0(HttpUri httpUri) {
            q2<HttpUri, HttpUri.c, g0> q2Var = this.f48099f;
            if (q2Var == null) {
                HttpUri httpUri2 = this.f48098e;
                if (httpUri2 != null) {
                    this.f48098e = HttpUri.newBuilder(httpUri2).g0(httpUri).I();
                } else {
                    this.f48098e = httpUri;
                }
                R();
            } else {
                q2Var.e(httpUri);
            }
            return this;
        }

        public b i0(RetryPolicy retryPolicy) {
            q2<RetryPolicy, RetryPolicy.b, u0> q2Var = this.f48102i;
            if (q2Var == null) {
                RetryPolicy retryPolicy2 = this.f48101h;
                if (retryPolicy2 != null) {
                    this.f48101h = RetryPolicy.newBuilder(retryPolicy2).g0(retryPolicy).I();
                } else {
                    this.f48101h = retryPolicy;
                }
                R();
            } else {
                q2Var.e(retryPolicy);
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
            this.f48100g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48100g = "";
            b0();
        }
    }

    /* synthetic */ RemoteDataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RemoteDataSource getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.K;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RemoteDataSource parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RemoteDataSource parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RemoteDataSource> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RemoteDataSource)) {
            return super.equals(obj);
        }
        RemoteDataSource remoteDataSource = (RemoteDataSource) obj;
        if (hasHttpUri() != remoteDataSource.hasHttpUri()) {
            return false;
        }
        if ((!hasHttpUri() || getHttpUri().equals(remoteDataSource.getHttpUri())) && getSha256().equals(remoteDataSource.getSha256()) && hasRetryPolicy() == remoteDataSource.hasRetryPolicy()) {
            return (!hasRetryPolicy() || getRetryPolicy().equals(remoteDataSource.getRetryPolicy())) && this.unknownFields.equals(remoteDataSource.unknownFields);
        }
        return false;
    }

    public HttpUri getHttpUri() {
        HttpUri httpUri = this.httpUri_;
        return httpUri == null ? HttpUri.getDefaultInstance() : httpUri;
    }

    public g0 getHttpUriOrBuilder() {
        return getHttpUri();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RemoteDataSource> getParserForType() {
        return PARSER;
    }

    public RetryPolicy getRetryPolicy() {
        RetryPolicy retryPolicy = this.retryPolicy_;
        return retryPolicy == null ? RetryPolicy.getDefaultInstance() : retryPolicy;
    }

    public u0 getRetryPolicyOrBuilder() {
        return getRetryPolicy();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.httpUri_ != null ? 0 + CodedOutputStream.G(1, getHttpUri()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.sha256_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.sha256_);
        }
        if (this.retryPolicy_ != null) {
            G += CodedOutputStream.G(3, getRetryPolicy());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getSha256() {
        Object obj = this.sha256_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sha256_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getSha256Bytes() {
        Object obj = this.sha256_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sha256_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHttpUri() {
        return this.httpUri_ != null;
    }

    public boolean hasRetryPolicy() {
        return this.retryPolicy_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasHttpUri()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getHttpUri().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 2) * 53) + getSha256().hashCode();
        if (hasRetryPolicy()) {
            hashCode2 = (((hashCode2 * 37) + 3) * 53) + getRetryPolicy().hashCode();
        }
        int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.L.d(RemoteDataSource.class, b.class);
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
        return new RemoteDataSource();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.httpUri_ != null) {
            codedOutputStream.L0(1, getHttpUri());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.sha256_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.sha256_);
        }
        if (this.retryPolicy_ != null) {
            codedOutputStream.L0(3, getRetryPolicy());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RemoteDataSource(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RemoteDataSource remoteDataSource) {
        return DEFAULT_INSTANCE.toBuilder().g0(remoteDataSource);
    }

    public static RemoteDataSource parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RemoteDataSource(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RemoteDataSource parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RemoteDataSource parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RemoteDataSource getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RemoteDataSource parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RemoteDataSource() {
        this.memoizedIsInitialized = (byte) -1;
        this.sha256_ = "";
    }

    public static RemoteDataSource parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RemoteDataSource parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RemoteDataSource parseFrom(InputStream inputStream) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RemoteDataSource(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                HttpUri httpUri = this.httpUri_;
                                HttpUri.c builder = httpUri != null ? httpUri.toBuilder() : null;
                                HttpUri httpUri2 = (HttpUri) pVar.B(HttpUri.parser(), f0Var);
                                this.httpUri_ = httpUri2;
                                if (builder != null) {
                                    builder.g0(httpUri2);
                                    this.httpUri_ = builder.I();
                                }
                            } else if (L == 18) {
                                this.sha256_ = pVar.K();
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                RetryPolicy retryPolicy = this.retryPolicy_;
                                RetryPolicy.b builder2 = retryPolicy != null ? retryPolicy.toBuilder() : null;
                                RetryPolicy retryPolicy2 = (RetryPolicy) pVar.B(RetryPolicy.parser(), f0Var);
                                this.retryPolicy_ = retryPolicy2;
                                if (builder2 != null) {
                                    builder2.g0(retryPolicy2);
                                    this.retryPolicy_ = builder2.I();
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

    public static RemoteDataSource parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RemoteDataSource parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RemoteDataSource parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RemoteDataSource) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
