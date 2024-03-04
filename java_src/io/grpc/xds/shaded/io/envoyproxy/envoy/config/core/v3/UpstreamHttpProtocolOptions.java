package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class UpstreamHttpProtocolOptions extends GeneratedMessageV3 implements l1 {
    public static final int AUTO_SAN_VALIDATION_FIELD_NUMBER = 2;
    public static final int AUTO_SNI_FIELD_NUMBER = 1;
    private static final UpstreamHttpProtocolOptions DEFAULT_INSTANCE = new UpstreamHttpProtocolOptions();
    private static final e2<UpstreamHttpProtocolOptions> PARSER = new a();
    private static final long serialVersionUID = 0;
    private boolean autoSanValidation_;
    private boolean autoSni_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<UpstreamHttpProtocolOptions> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public UpstreamHttpProtocolOptions m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new UpstreamHttpProtocolOptions(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements l1 {

        /* renamed from: e  reason: collision with root package name */
        private boolean f48166e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f48167f;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return n0.f48258f.d(UpstreamHttpProtocolOptions.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public UpstreamHttpProtocolOptions build() {
            UpstreamHttpProtocolOptions I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public UpstreamHttpProtocolOptions I() {
            UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = new UpstreamHttpProtocolOptions(this, (a) null);
            upstreamHttpProtocolOptions.autoSni_ = this.f48166e;
            upstreamHttpProtocolOptions.autoSanValidation_ = this.f48167f;
            Q();
            return upstreamHttpProtocolOptions;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public UpstreamHttpProtocolOptions getDefaultInstanceForType() {
            return UpstreamHttpProtocolOptions.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.UpstreamHttpProtocolOptions$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof UpstreamHttpProtocolOptions) {
                return g0((UpstreamHttpProtocolOptions) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(UpstreamHttpProtocolOptions upstreamHttpProtocolOptions) {
            if (upstreamHttpProtocolOptions == UpstreamHttpProtocolOptions.getDefaultInstance()) {
                return this;
            }
            if (upstreamHttpProtocolOptions.getAutoSni()) {
                j0(upstreamHttpProtocolOptions.getAutoSni());
            }
            if (upstreamHttpProtocolOptions.getAutoSanValidation()) {
                i0(upstreamHttpProtocolOptions.getAutoSanValidation());
            }
            z(((GeneratedMessageV3) upstreamHttpProtocolOptions).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return n0.f48257e;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b i0(boolean z10) {
            this.f48167f = z10;
            R();
            return this;
        }

        public b j0(boolean z10) {
            this.f48166e = z10;
            R();
            return this;
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

    /* synthetic */ UpstreamHttpProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static UpstreamHttpProtocolOptions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return n0.f48257e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static UpstreamHttpProtocolOptions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static UpstreamHttpProtocolOptions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<UpstreamHttpProtocolOptions> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpstreamHttpProtocolOptions)) {
            return super.equals(obj);
        }
        UpstreamHttpProtocolOptions upstreamHttpProtocolOptions = (UpstreamHttpProtocolOptions) obj;
        return getAutoSni() == upstreamHttpProtocolOptions.getAutoSni() && getAutoSanValidation() == upstreamHttpProtocolOptions.getAutoSanValidation() && this.unknownFields.equals(upstreamHttpProtocolOptions.unknownFields);
    }

    public boolean getAutoSanValidation() {
        return this.autoSanValidation_;
    }

    public boolean getAutoSni() {
        return this.autoSni_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<UpstreamHttpProtocolOptions> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        boolean z10 = this.autoSni_;
        int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
        boolean z11 = this.autoSanValidation_;
        if (z11) {
            e10 += CodedOutputStream.e(2, z11);
        }
        int serializedSize = e10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + com.google.protobuf.u0.d(getAutoSni())) * 37) + 2) * 53) + com.google.protobuf.u0.d(getAutoSanValidation())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return n0.f48258f.d(UpstreamHttpProtocolOptions.class, b.class);
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
        return new UpstreamHttpProtocolOptions();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z10 = this.autoSni_;
        if (z10) {
            codedOutputStream.n0(1, z10);
        }
        boolean z11 = this.autoSanValidation_;
        if (z11) {
            codedOutputStream.n0(2, z11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ UpstreamHttpProtocolOptions(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(UpstreamHttpProtocolOptions upstreamHttpProtocolOptions) {
        return DEFAULT_INSTANCE.toBuilder().g0(upstreamHttpProtocolOptions);
    }

    public static UpstreamHttpProtocolOptions parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private UpstreamHttpProtocolOptions(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamHttpProtocolOptions parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamHttpProtocolOptions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public UpstreamHttpProtocolOptions getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static UpstreamHttpProtocolOptions parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private UpstreamHttpProtocolOptions() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static UpstreamHttpProtocolOptions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static UpstreamHttpProtocolOptions parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private UpstreamHttpProtocolOptions(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 8) {
                                this.autoSni_ = pVar.r();
                            } else if (L != 16) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.autoSanValidation_ = pVar.r();
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

    public static UpstreamHttpProtocolOptions parseFrom(InputStream inputStream) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static UpstreamHttpProtocolOptions parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static UpstreamHttpProtocolOptions parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static UpstreamHttpProtocolOptions parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (UpstreamHttpProtocolOptions) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
