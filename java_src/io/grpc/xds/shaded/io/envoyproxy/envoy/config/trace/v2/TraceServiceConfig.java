package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

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
import com.google.protobuf.r1;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.GrpcService;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.r;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TraceServiceConfig extends GeneratedMessageV3 implements r1 {
    public static final int GRPC_SERVICE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private GrpcService grpcService_;
    private byte memoizedIsInitialized;
    private static final TraceServiceConfig DEFAULT_INSTANCE = new TraceServiceConfig();
    private static final e2<TraceServiceConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<TraceServiceConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TraceServiceConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TraceServiceConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private GrpcService f49557e;

        /* renamed from: f  reason: collision with root package name */
        private q2<GrpcService, GrpcService.c, r> f49558f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f.f49591b.d(TraceServiceConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TraceServiceConfig build() {
            TraceServiceConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TraceServiceConfig I() {
            TraceServiceConfig traceServiceConfig = new TraceServiceConfig(this, (a) null);
            q2<GrpcService, GrpcService.c, r> q2Var = this.f49558f;
            if (q2Var == null) {
                traceServiceConfig.grpcService_ = this.f49557e;
            } else {
                traceServiceConfig.grpcService_ = q2Var.b();
            }
            Q();
            return traceServiceConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TraceServiceConfig getDefaultInstanceForType() {
            return TraceServiceConfig.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.TraceServiceConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TraceServiceConfig) {
                return g0((TraceServiceConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(TraceServiceConfig traceServiceConfig) {
            if (traceServiceConfig == TraceServiceConfig.getDefaultInstance()) {
                return this;
            }
            if (traceServiceConfig.hasGrpcService()) {
                h0(traceServiceConfig.getGrpcService());
            }
            z(((GeneratedMessageV3) traceServiceConfig).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f.f49590a;
        }

        public b h0(GrpcService grpcService) {
            q2<GrpcService, GrpcService.c, r> q2Var = this.f49558f;
            if (q2Var == null) {
                GrpcService grpcService2 = this.f49557e;
                if (grpcService2 != null) {
                    this.f49557e = GrpcService.newBuilder(grpcService2).j0(grpcService).I();
                } else {
                    this.f49557e = grpcService;
                }
                R();
            } else {
                q2Var.e(grpcService);
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

    /* synthetic */ TraceServiceConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TraceServiceConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f.f49590a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TraceServiceConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TraceServiceConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TraceServiceConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TraceServiceConfig)) {
            return super.equals(obj);
        }
        TraceServiceConfig traceServiceConfig = (TraceServiceConfig) obj;
        if (hasGrpcService() != traceServiceConfig.hasGrpcService()) {
            return false;
        }
        return (!hasGrpcService() || getGrpcService().equals(traceServiceConfig.getGrpcService())) && this.unknownFields.equals(traceServiceConfig.unknownFields);
    }

    public GrpcService getGrpcService() {
        GrpcService grpcService = this.grpcService_;
        return grpcService == null ? GrpcService.getDefaultInstance() : grpcService;
    }

    public r getGrpcServiceOrBuilder() {
        return getGrpcService();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TraceServiceConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.grpcService_ != null ? 0 + CodedOutputStream.G(1, getGrpcService()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasGrpcService() {
        return this.grpcService_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasGrpcService()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getGrpcService().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return f.f49591b.d(TraceServiceConfig.class, b.class);
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
        return new TraceServiceConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.grpcService_ != null) {
            codedOutputStream.L0(1, getGrpcService());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TraceServiceConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TraceServiceConfig traceServiceConfig) {
        return DEFAULT_INSTANCE.toBuilder().g0(traceServiceConfig);
    }

    public static TraceServiceConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TraceServiceConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TraceServiceConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TraceServiceConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TraceServiceConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TraceServiceConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TraceServiceConfig() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TraceServiceConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TraceServiceConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private TraceServiceConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                GrpcService grpcService = this.grpcService_;
                                GrpcService.c builder = grpcService != null ? grpcService.toBuilder() : null;
                                GrpcService grpcService2 = (GrpcService) pVar.B(GrpcService.parser(), f0Var);
                                this.grpcService_ = grpcService2;
                                if (builder != null) {
                                    builder.j0(grpcService2);
                                    this.grpcService_ = builder.I();
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

    public static TraceServiceConfig parseFrom(InputStream inputStream) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TraceServiceConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TraceServiceConfig parseFrom(p pVar) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TraceServiceConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TraceServiceConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
