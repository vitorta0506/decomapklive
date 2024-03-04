package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2;

import com.google.protobuf.Any;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RequestIDExtension extends GeneratedMessageV3 implements d {
    private static final RequestIDExtension DEFAULT_INSTANCE = new RequestIDExtension();
    private static final e2<RequestIDExtension> PARSER = new a();
    public static final int TYPED_CONFIG_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private Any typedConfig_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RequestIDExtension> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RequestIDExtension m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new RequestIDExtension(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements d {

        /* renamed from: e  reason: collision with root package name */
        private Any f48659e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Any, Any.b, com.google.protobuf.f> f48660f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.D.d(RequestIDExtension.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RequestIDExtension build() {
            RequestIDExtension I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RequestIDExtension I() {
            RequestIDExtension requestIDExtension = new RequestIDExtension(this, (a) null);
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48660f;
            if (q2Var == null) {
                requestIDExtension.typedConfig_ = this.f48659e;
            } else {
                requestIDExtension.typedConfig_ = q2Var.b();
            }
            Q();
            return requestIDExtension;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RequestIDExtension getDefaultInstanceForType() {
            return RequestIDExtension.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.RequestIDExtension$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RequestIDExtension) {
                return g0((RequestIDExtension) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(RequestIDExtension requestIDExtension) {
            if (requestIDExtension == RequestIDExtension.getDefaultInstance()) {
                return this;
            }
            if (requestIDExtension.hasTypedConfig()) {
                h0(requestIDExtension.getTypedConfig());
            }
            z(((GeneratedMessageV3) requestIDExtension).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.C;
        }

        public b h0(Any any) {
            q2<Any, Any.b, com.google.protobuf.f> q2Var = this.f48660f;
            if (q2Var == null) {
                Any any2 = this.f48659e;
                if (any2 != null) {
                    this.f48659e = Any.newBuilder(any2).d0(any).I();
                } else {
                    this.f48659e = any;
                }
                R();
            } else {
                q2Var.e(any);
            }
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ RequestIDExtension(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RequestIDExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.C;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RequestIDExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RequestIDExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RequestIDExtension> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RequestIDExtension)) {
            return super.equals(obj);
        }
        RequestIDExtension requestIDExtension = (RequestIDExtension) obj;
        if (hasTypedConfig() != requestIDExtension.hasTypedConfig()) {
            return false;
        }
        return (!hasTypedConfig() || getTypedConfig().equals(requestIDExtension.getTypedConfig())) && this.unknownFields.equals(requestIDExtension.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RequestIDExtension> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.typedConfig_ != null ? 0 + CodedOutputStream.G(1, getTypedConfig()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    public Any getTypedConfig() {
        Any any = this.typedConfig_;
        return any == null ? Any.getDefaultInstance() : any;
    }

    public com.google.protobuf.f getTypedConfigOrBuilder() {
        return getTypedConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasTypedConfig() {
        return this.typedConfig_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTypedConfig()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTypedConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.network.http_connection_manager.v2.a.D.d(RequestIDExtension.class, b.class);
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
        return new RequestIDExtension();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.typedConfig_ != null) {
            codedOutputStream.L0(1, getTypedConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RequestIDExtension(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RequestIDExtension requestIDExtension) {
        return DEFAULT_INSTANCE.toBuilder().g0(requestIDExtension);
    }

    public static RequestIDExtension parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RequestIDExtension(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RequestIDExtension parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RequestIDExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RequestIDExtension getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static RequestIDExtension parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RequestIDExtension() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RequestIDExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RequestIDExtension parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RequestIDExtension(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L != 10) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                Any any = this.typedConfig_;
                                Any.b builder = any != null ? any.toBuilder() : null;
                                Any any2 = (Any) pVar.B(Any.parser(), f0Var);
                                this.typedConfig_ = any2;
                                if (builder != null) {
                                    builder.d0(any2);
                                    this.typedConfig_ = builder.I();
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

    public static RequestIDExtension parseFrom(InputStream inputStream) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RequestIDExtension parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RequestIDExtension parseFrom(p pVar) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RequestIDExtension parseFrom(p pVar, f0 f0Var) throws IOException {
        return (RequestIDExtension) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
