package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.q2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.QuicProtocolOptions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Http3ProtocolOptions extends GeneratedMessageV3 implements e0 {
    public static final int OVERRIDE_STREAM_ERROR_ON_INVALID_HTTP_MESSAGE_FIELD_NUMBER = 2;
    public static final int QUIC_PROTOCOL_OPTIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private BoolValue overrideStreamErrorOnInvalidHttpMessage_;
    private QuicProtocolOptions quicProtocolOptions_;
    private static final Http3ProtocolOptions DEFAULT_INSTANCE = new Http3ProtocolOptions();
    private static final e2<Http3ProtocolOptions> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<Http3ProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Http3ProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new Http3ProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements e0 {

        /* renamed from: e  reason: collision with root package name */
        private QuicProtocolOptions f48030e;

        /* renamed from: f  reason: collision with root package name */
        private q2<QuicProtocolOptions, QuicProtocolOptions.b, q0> f48031f;

        /* renamed from: g  reason: collision with root package name */
        private BoolValue f48032g;

        /* renamed from: h  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48033h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48278z.d(Http3ProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Http3ProtocolOptions build() {
            Http3ProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Http3ProtocolOptions I() {
            Http3ProtocolOptions http3ProtocolOptions = new Http3ProtocolOptions(this, (a) null);
            q2<QuicProtocolOptions, QuicProtocolOptions.b, q0> q2Var = this.f48031f;
            if (q2Var == null) {
                http3ProtocolOptions.quicProtocolOptions_ = this.f48030e;
            } else {
                http3ProtocolOptions.quicProtocolOptions_ = q2Var.b();
            }
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var2 = this.f48033h;
            if (q2Var2 == null) {
                http3ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = this.f48032g;
            } else {
                http3ProtocolOptions.overrideStreamErrorOnInvalidHttpMessage_ = q2Var2.b();
            }
            Q();
            return http3ProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Http3ProtocolOptions getDefaultInstanceForType() {
            return Http3ProtocolOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.Http3ProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof Http3ProtocolOptions) {
                return g0((Http3ProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(Http3ProtocolOptions http3ProtocolOptions) {
            if (http3ProtocolOptions == Http3ProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (http3ProtocolOptions.hasQuicProtocolOptions()) {
                i0(http3ProtocolOptions.getQuicProtocolOptions());
            }
            if (http3ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
                h0(http3ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage());
            }
            z(((GeneratedMessageV3) http3ProtocolOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48277y;
        }

        public b h0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48033h;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48032g;
                if (boolValue2 != null) {
                    this.f48032g = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48032g = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public b i0(QuicProtocolOptions quicProtocolOptions) {
            q2<QuicProtocolOptions, QuicProtocolOptions.b, q0> q2Var = this.f48031f;
            if (q2Var == null) {
                QuicProtocolOptions quicProtocolOptions2 = this.f48030e;
                if (quicProtocolOptions2 != null) {
                    this.f48030e = QuicProtocolOptions.newBuilder(quicProtocolOptions2).g0(quicProtocolOptions).I();
                } else {
                    this.f48030e = quicProtocolOptions;
                }
                R();
            } else {
                q2Var.e(quicProtocolOptions);
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
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ Http3ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Http3ProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48277y;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Http3ProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Http3ProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Http3ProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Http3ProtocolOptions)) {
            return super.equals(obj);
        }
        Http3ProtocolOptions http3ProtocolOptions = (Http3ProtocolOptions) obj;
        if (hasQuicProtocolOptions() != http3ProtocolOptions.hasQuicProtocolOptions()) {
            return false;
        }
        if ((!hasQuicProtocolOptions() || getQuicProtocolOptions().equals(http3ProtocolOptions.getQuicProtocolOptions())) && hasOverrideStreamErrorOnInvalidHttpMessage() == http3ProtocolOptions.hasOverrideStreamErrorOnInvalidHttpMessage()) {
            return (!hasOverrideStreamErrorOnInvalidHttpMessage() || getOverrideStreamErrorOnInvalidHttpMessage().equals(http3ProtocolOptions.getOverrideStreamErrorOnInvalidHttpMessage())) && this.unknownFields.equals(http3ProtocolOptions.unknownFields);
        }
        return false;
    }

    public BoolValue getOverrideStreamErrorOnInvalidHttpMessage() {
        BoolValue boolValue = this.overrideStreamErrorOnInvalidHttpMessage_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getOverrideStreamErrorOnInvalidHttpMessageOrBuilder() {
        return getOverrideStreamErrorOnInvalidHttpMessage();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Http3ProtocolOptions> getParserForType() {
        return PARSER;
    }

    public QuicProtocolOptions getQuicProtocolOptions() {
        QuicProtocolOptions quicProtocolOptions = this.quicProtocolOptions_;
        return quicProtocolOptions == null ? QuicProtocolOptions.getDefaultInstance() : quicProtocolOptions;
    }

    public q0 getQuicProtocolOptionsOrBuilder() {
        return getQuicProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.quicProtocolOptions_ != null ? 0 + CodedOutputStream.G(1, getQuicProtocolOptions()) : 0;
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            G += CodedOutputStream.G(2, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasOverrideStreamErrorOnInvalidHttpMessage() {
        return this.overrideStreamErrorOnInvalidHttpMessage_ != null;
    }

    public boolean hasQuicProtocolOptions() {
        return this.quicProtocolOptions_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasQuicProtocolOptions()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getQuicProtocolOptions().hashCode();
        }
        if (hasOverrideStreamErrorOnInvalidHttpMessage()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getOverrideStreamErrorOnInvalidHttpMessage().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48278z.d(Http3ProtocolOptions.class, b.class);
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
        return new Http3ProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.quicProtocolOptions_ != null) {
            codedOutputStream.L0(1, getQuicProtocolOptions());
        }
        if (this.overrideStreamErrorOnInvalidHttpMessage_ != null) {
            codedOutputStream.L0(2, getOverrideStreamErrorOnInvalidHttpMessage());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Http3ProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(Http3ProtocolOptions http3ProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(http3ProtocolOptions);
    }

    public static Http3ProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Http3ProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Http3ProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http3ProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Http3ProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static Http3ProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private Http3ProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Http3ProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static Http3ProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private Http3ProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            QuicProtocolOptions quicProtocolOptions = this.quicProtocolOptions_;
                            QuicProtocolOptions.b builder = quicProtocolOptions != null ? quicProtocolOptions.toBuilder() : null;
                            QuicProtocolOptions quicProtocolOptions2 = (QuicProtocolOptions) pVar.B(QuicProtocolOptions.parser(), f0Var);
                            this.quicProtocolOptions_ = quicProtocolOptions2;
                            if (builder != null) {
                                builder.g0(quicProtocolOptions2);
                                this.quicProtocolOptions_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            BoolValue boolValue = this.overrideStreamErrorOnInvalidHttpMessage_;
                            BoolValue.b builder2 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.overrideStreamErrorOnInvalidHttpMessage_ = boolValue2;
                            if (builder2 != null) {
                                builder2.d0(boolValue2);
                                this.overrideStreamErrorOnInvalidHttpMessage_ = builder2.I();
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

    public static Http3ProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Http3ProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static Http3ProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Http3ProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (Http3ProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
