package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.Http2ProtocolOptions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class GrpcProtocolOptions extends GeneratedMessageV3 implements r1 {
    public static final int HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Http2ProtocolOptions http2ProtocolOptions_;
    private byte memoizedIsInitialized;
    private static final GrpcProtocolOptions DEFAULT_INSTANCE = new GrpcProtocolOptions();
    private static final e2<GrpcProtocolOptions> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<GrpcProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public GrpcProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new GrpcProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Http2ProtocolOptions f46414e;

        /* renamed from: f  reason: collision with root package name */
        private q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> f46415f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g0.f46735r.d(GrpcProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public GrpcProtocolOptions build() {
            GrpcProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public GrpcProtocolOptions I() {
            GrpcProtocolOptions grpcProtocolOptions = new GrpcProtocolOptions(this, (a) null);
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var = this.f46415f;
            if (q2Var == null) {
                grpcProtocolOptions.http2ProtocolOptions_ = this.f46414e;
            } else {
                grpcProtocolOptions.http2ProtocolOptions_ = q2Var.b();
            }
            Q();
            return grpcProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public GrpcProtocolOptions getDefaultInstanceForType() {
            return GrpcProtocolOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof GrpcProtocolOptions) {
                return g0((GrpcProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(GrpcProtocolOptions grpcProtocolOptions) {
            if (grpcProtocolOptions == GrpcProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (grpcProtocolOptions.hasHttp2ProtocolOptions()) {
                h0(grpcProtocolOptions.getHttp2ProtocolOptions());
            }
            z(((GeneratedMessageV3) grpcProtocolOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g0.f46734q;
        }

        public b h0(Http2ProtocolOptions http2ProtocolOptions) {
            q2<Http2ProtocolOptions, Http2ProtocolOptions.b, y> q2Var = this.f46415f;
            if (q2Var == null) {
                Http2ProtocolOptions http2ProtocolOptions2 = this.f46414e;
                if (http2ProtocolOptions2 != null) {
                    this.f46414e = Http2ProtocolOptions.newBuilder(http2ProtocolOptions2).i0(http2ProtocolOptions).I();
                } else {
                    this.f46414e = http2ProtocolOptions;
                }
                R();
            } else {
                q2Var.e(http2ProtocolOptions);
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

    /* synthetic */ GrpcProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static GrpcProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g0.f46734q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static GrpcProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static GrpcProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<GrpcProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GrpcProtocolOptions)) {
            return super.equals(obj);
        }
        GrpcProtocolOptions grpcProtocolOptions = (GrpcProtocolOptions) obj;
        if (hasHttp2ProtocolOptions() != grpcProtocolOptions.hasHttp2ProtocolOptions()) {
            return false;
        }
        return (!hasHttp2ProtocolOptions() || getHttp2ProtocolOptions().equals(grpcProtocolOptions.getHttp2ProtocolOptions())) && this.unknownFields.equals(grpcProtocolOptions.unknownFields);
    }

    public Http2ProtocolOptions getHttp2ProtocolOptions() {
        Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
        return http2ProtocolOptions == null ? Http2ProtocolOptions.getDefaultInstance() : http2ProtocolOptions;
    }

    public y getHttp2ProtocolOptionsOrBuilder() {
        return getHttp2ProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<GrpcProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.http2ProtocolOptions_ != null ? 0 + CodedOutputStream.G(1, getHttp2ProtocolOptions()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasHttp2ProtocolOptions() {
        return this.http2ProtocolOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasHttp2ProtocolOptions()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getHttp2ProtocolOptions().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g0.f46735r.d(GrpcProtocolOptions.class, b.class);
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
        return new GrpcProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.http2ProtocolOptions_ != null) {
            codedOutputStream.L0(1, getHttp2ProtocolOptions());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ GrpcProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(GrpcProtocolOptions grpcProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(grpcProtocolOptions);
    }

    public static GrpcProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private GrpcProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GrpcProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public GrpcProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static GrpcProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private GrpcProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static GrpcProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static GrpcProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private GrpcProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                                Http2ProtocolOptions http2ProtocolOptions = this.http2ProtocolOptions_;
                                Http2ProtocolOptions.b builder = http2ProtocolOptions != null ? http2ProtocolOptions.toBuilder() : null;
                                Http2ProtocolOptions http2ProtocolOptions2 = (Http2ProtocolOptions) pVar.B(Http2ProtocolOptions.parser(), f0Var);
                                this.http2ProtocolOptions_ = http2ProtocolOptions2;
                                if (builder != null) {
                                    builder.i0(http2ProtocolOptions2);
                                    this.http2ProtocolOptions_ = builder.I();
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

    public static GrpcProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static GrpcProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static GrpcProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static GrpcProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (GrpcProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
