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
public final class QuicProtocolOptions extends GeneratedMessageV3 implements q0 {
    public static final int INITIAL_CONNECTION_WINDOW_SIZE_FIELD_NUMBER = 3;
    public static final int INITIAL_STREAM_WINDOW_SIZE_FIELD_NUMBER = 2;
    public static final int MAX_CONCURRENT_STREAMS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private UInt32Value initialConnectionWindowSize_;
    private UInt32Value initialStreamWindowSize_;
    private UInt32Value maxConcurrentStreams_;
    private byte memoizedIsInitialized;
    private static final QuicProtocolOptions DEFAULT_INSTANCE = new QuicProtocolOptions();
    private static final e2<QuicProtocolOptions> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<QuicProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public QuicProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new QuicProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements q0 {

        /* renamed from: e  reason: collision with root package name */
        private UInt32Value f48088e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48089f;

        /* renamed from: g  reason: collision with root package name */
        private UInt32Value f48090g;

        /* renamed from: h  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48091h;

        /* renamed from: i  reason: collision with root package name */
        private UInt32Value f48092i;

        /* renamed from: j  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f48093j;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48256d.d(QuicProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public QuicProtocolOptions build() {
            QuicProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public QuicProtocolOptions I() {
            QuicProtocolOptions quicProtocolOptions = new QuicProtocolOptions(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48089f;
            if (q2Var == null) {
                quicProtocolOptions.maxConcurrentStreams_ = this.f48088e;
            } else {
                quicProtocolOptions.maxConcurrentStreams_ = q2Var.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var2 = this.f48091h;
            if (q2Var2 == null) {
                quicProtocolOptions.initialStreamWindowSize_ = this.f48090g;
            } else {
                quicProtocolOptions.initialStreamWindowSize_ = q2Var2.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var3 = this.f48093j;
            if (q2Var3 == null) {
                quicProtocolOptions.initialConnectionWindowSize_ = this.f48092i;
            } else {
                quicProtocolOptions.initialConnectionWindowSize_ = q2Var3.b();
            }
            Q();
            return quicProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public QuicProtocolOptions getDefaultInstanceForType() {
            return QuicProtocolOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof QuicProtocolOptions) {
                return g0((QuicProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(QuicProtocolOptions quicProtocolOptions) {
            if (quicProtocolOptions == QuicProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (quicProtocolOptions.hasMaxConcurrentStreams()) {
                j0(quicProtocolOptions.getMaxConcurrentStreams());
            }
            if (quicProtocolOptions.hasInitialStreamWindowSize()) {
                i0(quicProtocolOptions.getInitialStreamWindowSize());
            }
            if (quicProtocolOptions.hasInitialConnectionWindowSize()) {
                h0(quicProtocolOptions.getInitialConnectionWindowSize());
            }
            z(((GeneratedMessageV3) quicProtocolOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48255c;
        }

        public b h0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48093j;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48092i;
                if (uInt32Value2 != null) {
                    this.f48092i = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48092i = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48091h;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48090g;
                if (uInt32Value2 != null) {
                    this.f48090g = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48090g = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f48089f;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f48088e;
                if (uInt32Value2 != null) {
                    this.f48088e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f48088e = uInt32Value;
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

    /* synthetic */ QuicProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static QuicProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48255c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static QuicProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static QuicProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<QuicProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QuicProtocolOptions)) {
            return super.equals(obj);
        }
        QuicProtocolOptions quicProtocolOptions = (QuicProtocolOptions) obj;
        if (hasMaxConcurrentStreams() != quicProtocolOptions.hasMaxConcurrentStreams()) {
            return false;
        }
        if ((!hasMaxConcurrentStreams() || getMaxConcurrentStreams().equals(quicProtocolOptions.getMaxConcurrentStreams())) && hasInitialStreamWindowSize() == quicProtocolOptions.hasInitialStreamWindowSize()) {
            if ((!hasInitialStreamWindowSize() || getInitialStreamWindowSize().equals(quicProtocolOptions.getInitialStreamWindowSize())) && hasInitialConnectionWindowSize() == quicProtocolOptions.hasInitialConnectionWindowSize()) {
                return (!hasInitialConnectionWindowSize() || getInitialConnectionWindowSize().equals(quicProtocolOptions.getInitialConnectionWindowSize())) && this.unknownFields.equals(quicProtocolOptions.unknownFields);
            }
            return false;
        }
        return false;
    }

    public UInt32Value getInitialConnectionWindowSize() {
        UInt32Value uInt32Value = this.initialConnectionWindowSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getInitialConnectionWindowSizeOrBuilder() {
        return getInitialConnectionWindowSize();
    }

    public UInt32Value getInitialStreamWindowSize() {
        UInt32Value uInt32Value = this.initialStreamWindowSize_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getInitialStreamWindowSizeOrBuilder() {
        return getInitialStreamWindowSize();
    }

    public UInt32Value getMaxConcurrentStreams() {
        UInt32Value uInt32Value = this.maxConcurrentStreams_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxConcurrentStreamsOrBuilder() {
        return getMaxConcurrentStreams();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<QuicProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.maxConcurrentStreams_ != null ? 0 + CodedOutputStream.G(1, getMaxConcurrentStreams()) : 0;
        if (this.initialStreamWindowSize_ != null) {
            G += CodedOutputStream.G(2, getInitialStreamWindowSize());
        }
        if (this.initialConnectionWindowSize_ != null) {
            G += CodedOutputStream.G(3, getInitialConnectionWindowSize());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasInitialConnectionWindowSize() {
        return this.initialConnectionWindowSize_ != null;
    }

    public boolean hasInitialStreamWindowSize() {
        return this.initialStreamWindowSize_ != null;
    }

    public boolean hasMaxConcurrentStreams() {
        return this.maxConcurrentStreams_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMaxConcurrentStreams()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMaxConcurrentStreams().hashCode();
        }
        if (hasInitialStreamWindowSize()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getInitialStreamWindowSize().hashCode();
        }
        if (hasInitialConnectionWindowSize()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getInitialConnectionWindowSize().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48256d.d(QuicProtocolOptions.class, b.class);
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
        return new QuicProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.maxConcurrentStreams_ != null) {
            codedOutputStream.L0(1, getMaxConcurrentStreams());
        }
        if (this.initialStreamWindowSize_ != null) {
            codedOutputStream.L0(2, getInitialStreamWindowSize());
        }
        if (this.initialConnectionWindowSize_ != null) {
            codedOutputStream.L0(3, getInitialConnectionWindowSize());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ QuicProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(QuicProtocolOptions quicProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(quicProtocolOptions);
    }

    public static QuicProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private QuicProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuicProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuicProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public QuicProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static QuicProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private QuicProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static QuicProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static QuicProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private QuicProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            UInt32Value uInt32Value = this.maxConcurrentStreams_;
                            builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxConcurrentStreams_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.maxConcurrentStreams_ = builder.I();
                            }
                        } else if (L == 18) {
                            UInt32Value uInt32Value3 = this.initialStreamWindowSize_;
                            builder = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.initialStreamWindowSize_ = uInt32Value4;
                            if (builder != null) {
                                builder.g0(uInt32Value4);
                                this.initialStreamWindowSize_ = builder.I();
                            }
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            UInt32Value uInt32Value5 = this.initialConnectionWindowSize_;
                            builder = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                            UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.initialConnectionWindowSize_ = uInt32Value6;
                            if (builder != null) {
                                builder.g0(uInt32Value6);
                                this.initialConnectionWindowSize_ = builder.I();
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

    public static QuicProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static QuicProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static QuicProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static QuicProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (QuicProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
