package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.DoubleValue;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.q2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RateLimitSettings extends GeneratedMessageV3 implements h0 {
    public static final int FILL_RATE_FIELD_NUMBER = 2;
    public static final int MAX_TOKENS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private DoubleValue fillRate_;
    private UInt32Value maxTokens_;
    private byte memoizedIsInitialized;
    private static final RateLimitSettings DEFAULT_INSTANCE = new RateLimitSettings();
    private static final e2<RateLimitSettings> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RateLimitSettings> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RateLimitSettings m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RateLimitSettings(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h0 {

        /* renamed from: e  reason: collision with root package name */
        private UInt32Value f46621e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f46622f;

        /* renamed from: g  reason: collision with root package name */
        private DoubleValue f46623g;

        /* renamed from: h  reason: collision with root package name */
        private q2<DoubleValue, DoubleValue.b, com.google.protobuf.u> f46624h;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return l.f46744h.d(RateLimitSettings.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RateLimitSettings build() {
            RateLimitSettings I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RateLimitSettings I() {
            RateLimitSettings rateLimitSettings = new RateLimitSettings(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46622f;
            if (q2Var == null) {
                rateLimitSettings.maxTokens_ = this.f46621e;
            } else {
                rateLimitSettings.maxTokens_ = q2Var.b();
            }
            q2<DoubleValue, DoubleValue.b, com.google.protobuf.u> q2Var2 = this.f46624h;
            if (q2Var2 == null) {
                rateLimitSettings.fillRate_ = this.f46623g;
            } else {
                rateLimitSettings.fillRate_ = q2Var2.b();
            }
            Q();
            return rateLimitSettings;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RateLimitSettings getDefaultInstanceForType() {
            return RateLimitSettings.getDefaultInstance();
        }

        public b d0(DoubleValue doubleValue) {
            q2<DoubleValue, DoubleValue.b, com.google.protobuf.u> q2Var = this.f46624h;
            if (q2Var == null) {
                DoubleValue doubleValue2 = this.f46623g;
                if (doubleValue2 != null) {
                    this.f46623g = DoubleValue.newBuilder(doubleValue2).e0(doubleValue).I();
                } else {
                    this.f46623g = doubleValue;
                }
                R();
            } else {
                q2Var.e(doubleValue);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.h0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.h0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.RateLimitSettings$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof RateLimitSettings) {
                return h0((RateLimitSettings) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return l.f46743g;
        }

        public b h0(RateLimitSettings rateLimitSettings) {
            if (rateLimitSettings == RateLimitSettings.getDefaultInstance()) {
                return this;
            }
            if (rateLimitSettings.hasMaxTokens()) {
                i0(rateLimitSettings.getMaxTokens());
            }
            if (rateLimitSettings.hasFillRate()) {
                d0(rateLimitSettings.getFillRate());
            }
            z(((GeneratedMessageV3) rateLimitSettings).unknownFields);
            R();
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f46622f;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f46621e;
                if (uInt32Value2 != null) {
                    this.f46621e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f46621e = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
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

    /* synthetic */ RateLimitSettings(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RateLimitSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return l.f46743g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RateLimitSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RateLimitSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RateLimitSettings> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RateLimitSettings)) {
            return super.equals(obj);
        }
        RateLimitSettings rateLimitSettings = (RateLimitSettings) obj;
        if (hasMaxTokens() != rateLimitSettings.hasMaxTokens()) {
            return false;
        }
        if ((!hasMaxTokens() || getMaxTokens().equals(rateLimitSettings.getMaxTokens())) && hasFillRate() == rateLimitSettings.hasFillRate()) {
            return (!hasFillRate() || getFillRate().equals(rateLimitSettings.getFillRate())) && this.unknownFields.equals(rateLimitSettings.unknownFields);
        }
        return false;
    }

    public DoubleValue getFillRate() {
        DoubleValue doubleValue = this.fillRate_;
        return doubleValue == null ? DoubleValue.getDefaultInstance() : doubleValue;
    }

    public com.google.protobuf.u getFillRateOrBuilder() {
        return getFillRate();
    }

    public UInt32Value getMaxTokens() {
        UInt32Value uInt32Value = this.maxTokens_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxTokensOrBuilder() {
        return getMaxTokens();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RateLimitSettings> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.maxTokens_ != null ? 0 + CodedOutputStream.G(1, getMaxTokens()) : 0;
        if (this.fillRate_ != null) {
            G += CodedOutputStream.G(2, getFillRate());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFillRate() {
        return this.fillRate_ != null;
    }

    public boolean hasMaxTokens() {
        return this.maxTokens_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasMaxTokens()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMaxTokens().hashCode();
        }
        if (hasFillRate()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getFillRate().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return l.f46744h.d(RateLimitSettings.class, b.class);
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
        return new RateLimitSettings();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.maxTokens_ != null) {
            codedOutputStream.L0(1, getMaxTokens());
        }
        if (this.fillRate_ != null) {
            codedOutputStream.L0(2, getFillRate());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RateLimitSettings(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RateLimitSettings rateLimitSettings) {
        return DEFAULT_INSTANCE.toBuilder().h0(rateLimitSettings);
    }

    public static RateLimitSettings parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RateLimitSettings(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RateLimitSettings parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimitSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RateLimitSettings getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static RateLimitSettings parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RateLimitSettings() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RateLimitSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RateLimitSettings parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private RateLimitSettings(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            UInt32Value uInt32Value = this.maxTokens_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxTokens_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.maxTokens_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            DoubleValue doubleValue = this.fillRate_;
                            DoubleValue.b builder2 = doubleValue != null ? doubleValue.toBuilder() : null;
                            DoubleValue doubleValue2 = (DoubleValue) pVar.B(DoubleValue.parser(), f0Var);
                            this.fillRate_ = doubleValue2;
                            if (builder2 != null) {
                                builder2.e0(doubleValue2);
                                this.fillRate_ = builder2.I();
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

    public static RateLimitSettings parseFrom(InputStream inputStream) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RateLimitSettings parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RateLimitSettings parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RateLimitSettings parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RateLimitSettings) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
