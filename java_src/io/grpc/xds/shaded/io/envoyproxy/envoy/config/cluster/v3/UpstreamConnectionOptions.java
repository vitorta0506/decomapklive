package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

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
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UpstreamConnectionOptions extends GeneratedMessageV3 implements k {
    private static final UpstreamConnectionOptions DEFAULT_INSTANCE = new UpstreamConnectionOptions();
    private static final e2<UpstreamConnectionOptions> PARSER = new a();
    public static final int TCP_KEEPALIVE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private TcpKeepalive tcpKeepalive_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<UpstreamConnectionOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpstreamConnectionOptions m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new UpstreamConnectionOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements k {

        /* renamed from: e  reason: collision with root package name */
        private TcpKeepalive f47723e;

        /* renamed from: f  reason: collision with root package name */
        private q2<TcpKeepalive, TcpKeepalive.b, g1> f47724f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.R.d(UpstreamConnectionOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpstreamConnectionOptions build() {
            UpstreamConnectionOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpstreamConnectionOptions I() {
            UpstreamConnectionOptions upstreamConnectionOptions = new UpstreamConnectionOptions(this, (a) null);
            q2<TcpKeepalive, TcpKeepalive.b, g1> q2Var = this.f47724f;
            if (q2Var == null) {
                upstreamConnectionOptions.tcpKeepalive_ = this.f47723e;
            } else {
                upstreamConnectionOptions.tcpKeepalive_ = q2Var.b();
            }
            Q();
            return upstreamConnectionOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpstreamConnectionOptions getDefaultInstanceForType() {
            return UpstreamConnectionOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions.access$600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.UpstreamConnectionOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof UpstreamConnectionOptions) {
                return g0((UpstreamConnectionOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(UpstreamConnectionOptions upstreamConnectionOptions) {
            if (upstreamConnectionOptions == UpstreamConnectionOptions.getDefaultInstance()) {
                return this;
            }
            if (upstreamConnectionOptions.hasTcpKeepalive()) {
                h0(upstreamConnectionOptions.getTcpKeepalive());
            }
            z(((GeneratedMessageV3) upstreamConnectionOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.Q;
        }

        public b h0(TcpKeepalive tcpKeepalive) {
            q2<TcpKeepalive, TcpKeepalive.b, g1> q2Var = this.f47724f;
            if (q2Var == null) {
                TcpKeepalive tcpKeepalive2 = this.f47723e;
                if (tcpKeepalive2 != null) {
                    this.f47723e = TcpKeepalive.newBuilder(tcpKeepalive2).g0(tcpKeepalive).I();
                } else {
                    this.f47723e = tcpKeepalive;
                }
                R();
            } else {
                q2Var.e(tcpKeepalive);
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

    /* synthetic */ UpstreamConnectionOptions(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpstreamConnectionOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.Q;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpstreamConnectionOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpstreamConnectionOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpstreamConnectionOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpstreamConnectionOptions)) {
            return super.equals(obj);
        }
        UpstreamConnectionOptions upstreamConnectionOptions = (UpstreamConnectionOptions) obj;
        if (hasTcpKeepalive() != upstreamConnectionOptions.hasTcpKeepalive()) {
            return false;
        }
        return (!hasTcpKeepalive() || getTcpKeepalive().equals(upstreamConnectionOptions.getTcpKeepalive())) && this.unknownFields.equals(upstreamConnectionOptions.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpstreamConnectionOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = (this.tcpKeepalive_ != null ? 0 + CodedOutputStream.G(1, getTcpKeepalive()) : 0) + this.unknownFields.getSerializedSize();
        this.memoizedSize = G;
        return G;
    }

    public TcpKeepalive getTcpKeepalive() {
        TcpKeepalive tcpKeepalive = this.tcpKeepalive_;
        return tcpKeepalive == null ? TcpKeepalive.getDefaultInstance() : tcpKeepalive;
    }

    public g1 getTcpKeepaliveOrBuilder() {
        return getTcpKeepalive();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasTcpKeepalive() {
        return this.tcpKeepalive_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasTcpKeepalive()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getTcpKeepalive().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return d.R.d(UpstreamConnectionOptions.class, b.class);
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
        return new UpstreamConnectionOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.tcpKeepalive_ != null) {
            codedOutputStream.L0(1, getTcpKeepalive());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpstreamConnectionOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpstreamConnectionOptions upstreamConnectionOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(upstreamConnectionOptions);
    }

    public static UpstreamConnectionOptions parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpstreamConnectionOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamConnectionOptions parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamConnectionOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpstreamConnectionOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static UpstreamConnectionOptions parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpstreamConnectionOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamConnectionOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpstreamConnectionOptions parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UpstreamConnectionOptions(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                TcpKeepalive tcpKeepalive = this.tcpKeepalive_;
                                TcpKeepalive.b builder = tcpKeepalive != null ? tcpKeepalive.toBuilder() : null;
                                TcpKeepalive tcpKeepalive2 = (TcpKeepalive) pVar.B(TcpKeepalive.parser(), f0Var);
                                this.tcpKeepalive_ = tcpKeepalive2;
                                if (builder != null) {
                                    builder.g0(tcpKeepalive2);
                                    this.tcpKeepalive_ = builder.I();
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

    public static UpstreamConnectionOptions parseFrom(InputStream inputStream) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UpstreamConnectionOptions parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamConnectionOptions parseFrom(p pVar) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpstreamConnectionOptions parseFrom(p pVar, f0 f0Var) throws IOException {
        return (UpstreamConnectionOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
