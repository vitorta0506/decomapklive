package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TcpKeepalive extends GeneratedMessageV3 implements g1 {
    public static final int KEEPALIVE_INTERVAL_FIELD_NUMBER = 3;
    public static final int KEEPALIVE_PROBES_FIELD_NUMBER = 1;
    public static final int KEEPALIVE_TIME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private UInt32Value keepaliveInterval_;
    private UInt32Value keepaliveProbes_;
    private UInt32Value keepaliveTime_;
    private byte memoizedIsInitialized;
    private static final TcpKeepalive DEFAULT_INSTANCE = new TcpKeepalive();
    private static final e2<TcpKeepalive> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<TcpKeepalive> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TcpKeepalive m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new TcpKeepalive(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g1 {

        /* renamed from: e  reason: collision with root package name */
        private UInt32Value f48148e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48149f;

        /* renamed from: g  reason: collision with root package name */
        private UInt32Value f48150g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48151h;

        /* renamed from: i  reason: collision with root package name */
        private UInt32Value f48152i;

        /* renamed from: j  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48153j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48176h.d(TcpKeepalive.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TcpKeepalive build() {
            TcpKeepalive I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TcpKeepalive I() {
            TcpKeepalive tcpKeepalive = new TcpKeepalive(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48149f;
            if (q2Var == null) {
                tcpKeepalive.keepaliveProbes_ = this.f48148e;
            } else {
                tcpKeepalive.keepaliveProbes_ = q2Var.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f48151h;
            if (q2Var2 == null) {
                tcpKeepalive.keepaliveTime_ = this.f48150g;
            } else {
                tcpKeepalive.keepaliveTime_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f48153j;
            if (q2Var3 == null) {
                tcpKeepalive.keepaliveInterval_ = this.f48152i;
            } else {
                tcpKeepalive.keepaliveInterval_ = q2Var3.b();
            }
            Q();
            return tcpKeepalive;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TcpKeepalive getDefaultInstanceForType() {
            return TcpKeepalive.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TcpKeepalive$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof TcpKeepalive) {
                return g0((TcpKeepalive) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(TcpKeepalive tcpKeepalive) {
            if (tcpKeepalive == TcpKeepalive.getDefaultInstance()) {
                return this;
            }
            if (tcpKeepalive.hasKeepaliveProbes()) {
                i0(tcpKeepalive.getKeepaliveProbes());
            }
            if (tcpKeepalive.hasKeepaliveTime()) {
                j0(tcpKeepalive.getKeepaliveTime());
            }
            if (tcpKeepalive.hasKeepaliveInterval()) {
                h0(tcpKeepalive.getKeepaliveInterval());
            }
            z(((GeneratedMessageV3) tcpKeepalive).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48175g;
        }

        public b h0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48153j;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48152i;
                if (uInt32Value2 != null) {
                    this.f48152i = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48152i = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48149f;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48148e;
                if (uInt32Value2 != null) {
                    this.f48148e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48148e = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48151h;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48150g;
                if (uInt32Value2 != null) {
                    this.f48150g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48150g = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ TcpKeepalive(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TcpKeepalive getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48175g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TcpKeepalive parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TcpKeepalive parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TcpKeepalive> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TcpKeepalive)) {
            return super.equals(obj);
        }
        TcpKeepalive tcpKeepalive = (TcpKeepalive) obj;
        if (hasKeepaliveProbes() != tcpKeepalive.hasKeepaliveProbes()) {
            return false;
        }
        if ((!hasKeepaliveProbes() || getKeepaliveProbes().equals(tcpKeepalive.getKeepaliveProbes())) && hasKeepaliveTime() == tcpKeepalive.hasKeepaliveTime()) {
            if ((!hasKeepaliveTime() || getKeepaliveTime().equals(tcpKeepalive.getKeepaliveTime())) && hasKeepaliveInterval() == tcpKeepalive.hasKeepaliveInterval()) {
                return (!hasKeepaliveInterval() || getKeepaliveInterval().equals(tcpKeepalive.getKeepaliveInterval())) && this.unknownFields.equals(tcpKeepalive.unknownFields);
            }
            return false;
        }
        return false;
    }

    public UInt32Value getKeepaliveInterval() {
        UInt32Value uInt32Value = this.keepaliveInterval_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getKeepaliveIntervalOrBuilder() {
        return getKeepaliveInterval();
    }

    public UInt32Value getKeepaliveProbes() {
        UInt32Value uInt32Value = this.keepaliveProbes_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getKeepaliveProbesOrBuilder() {
        return getKeepaliveProbes();
    }

    public UInt32Value getKeepaliveTime() {
        UInt32Value uInt32Value = this.keepaliveTime_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getKeepaliveTimeOrBuilder() {
        return getKeepaliveTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TcpKeepalive> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.keepaliveProbes_ != null ? 0 + CodedOutputStream.G(1, getKeepaliveProbes()) : 0;
        if (this.keepaliveTime_ != null) {
            G += CodedOutputStream.G(2, getKeepaliveTime());
        }
        if (this.keepaliveInterval_ != null) {
            G += CodedOutputStream.G(3, getKeepaliveInterval());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasKeepaliveInterval() {
        return this.keepaliveInterval_ != null;
    }

    public boolean hasKeepaliveProbes() {
        return this.keepaliveProbes_ != null;
    }

    public boolean hasKeepaliveTime() {
        return this.keepaliveTime_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasKeepaliveProbes()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getKeepaliveProbes().hashCode();
        }
        if (hasKeepaliveTime()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getKeepaliveTime().hashCode();
        }
        if (hasKeepaliveInterval()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getKeepaliveInterval().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.f48176h.d(TcpKeepalive.class, b.class);
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
        return new TcpKeepalive();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.keepaliveProbes_ != null) {
            codedOutputStream.L0(1, getKeepaliveProbes());
        }
        if (this.keepaliveTime_ != null) {
            codedOutputStream.L0(2, getKeepaliveTime());
        }
        if (this.keepaliveInterval_ != null) {
            codedOutputStream.L0(3, getKeepaliveInterval());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TcpKeepalive(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TcpKeepalive tcpKeepalive) {
        return DEFAULT_INSTANCE.toBuilder().g0(tcpKeepalive);
    }

    public static TcpKeepalive parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TcpKeepalive(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TcpKeepalive parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TcpKeepalive parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TcpKeepalive getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TcpKeepalive parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TcpKeepalive() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TcpKeepalive parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TcpKeepalive parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private TcpKeepalive(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        this();
        UInt32Value.b builder;
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    if (L != 0) {
                        if (L == 10) {
                            UInt32Value uInt32Value = this.keepaliveProbes_;
                            builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.keepaliveProbes_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.keepaliveProbes_ = builder.I();
                            }
                        } else if (L == 18) {
                            UInt32Value uInt32Value3 = this.keepaliveTime_;
                            builder = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.keepaliveTime_ = uInt32Value4;
                            if (builder != null) {
                                builder.g0(uInt32Value4);
                                this.keepaliveTime_ = builder.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value5 = this.keepaliveInterval_;
                            builder = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                            UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.keepaliveInterval_ = uInt32Value6;
                            if (builder != null) {
                                builder.g0(uInt32Value6);
                                this.keepaliveInterval_ = builder.I();
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

    public static TcpKeepalive parseFrom(InputStream inputStream) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TcpKeepalive parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TcpKeepalive parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TcpKeepalive parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (TcpKeepalive) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
