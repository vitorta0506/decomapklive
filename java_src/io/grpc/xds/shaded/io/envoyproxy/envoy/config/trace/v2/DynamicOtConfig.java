package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class DynamicOtConfig extends GeneratedMessageV3 implements r1 {
    public static final int CONFIG_FIELD_NUMBER = 2;
    public static final int LIBRARY_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Struct config_;
    private volatile Object library_;
    private byte memoizedIsInitialized;
    private static final DynamicOtConfig DEFAULT_INSTANCE = new DynamicOtConfig();
    private static final e2<DynamicOtConfig> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<DynamicOtConfig> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public DynamicOtConfig m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new DynamicOtConfig(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private Object f49533e;

        /* renamed from: f  reason: collision with root package name */
        private Struct f49534f;

        /* renamed from: g  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f49535g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.b.f49577b.d(DynamicOtConfig.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public DynamicOtConfig build() {
            DynamicOtConfig I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public DynamicOtConfig I() {
            DynamicOtConfig dynamicOtConfig = new DynamicOtConfig(this, (a) null);
            dynamicOtConfig.library_ = this.f49533e;
            q2<Struct, Struct.b, u2> q2Var = this.f49535g;
            if (q2Var == null) {
                dynamicOtConfig.config_ = this.f49534f;
            } else {
                dynamicOtConfig.config_ = q2Var.b();
            }
            Q();
            return dynamicOtConfig;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public DynamicOtConfig getDefaultInstanceForType() {
            return DynamicOtConfig.getDefaultInstance();
        }

        public b d0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f49535g;
            if (q2Var == null) {
                Struct struct2 = this.f49534f;
                if (struct2 != null) {
                    this.f49534f = Struct.newBuilder(struct2).i0(struct).I();
                } else {
                    this.f49534f = struct;
                }
                R();
            } else {
                q2Var.e(struct);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.DynamicOtConfig$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof DynamicOtConfig) {
                return h0((DynamicOtConfig) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.b.f49576a;
        }

        public b h0(DynamicOtConfig dynamicOtConfig) {
            if (dynamicOtConfig == DynamicOtConfig.getDefaultInstance()) {
                return this;
            }
            if (!dynamicOtConfig.getLibrary().isEmpty()) {
                this.f49533e = dynamicOtConfig.library_;
                R();
            }
            if (dynamicOtConfig.hasConfig()) {
                d0(dynamicOtConfig.getConfig());
            }
            z(((GeneratedMessageV3) dynamicOtConfig).unknownFields);
            R();
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
            this.f49533e = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f49533e = "";
            b0();
        }
    }

    /* synthetic */ DynamicOtConfig(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static DynamicOtConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.b.f49576a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static DynamicOtConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static DynamicOtConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<DynamicOtConfig> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DynamicOtConfig)) {
            return super.equals(obj);
        }
        DynamicOtConfig dynamicOtConfig = (DynamicOtConfig) obj;
        if (getLibrary().equals(dynamicOtConfig.getLibrary()) && hasConfig() == dynamicOtConfig.hasConfig()) {
            return (!hasConfig() || getConfig().equals(dynamicOtConfig.getConfig())) && this.unknownFields.equals(dynamicOtConfig.unknownFields);
        }
        return false;
    }

    public Struct getConfig() {
        Struct struct = this.config_;
        return struct == null ? Struct.getDefaultInstance() : struct;
    }

    public u2 getConfigOrBuilder() {
        return getConfig();
    }

    public String getLibrary() {
        Object obj = this.library_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.library_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getLibraryBytes() {
        Object obj = this.library_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.library_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<DynamicOtConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.library_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.library_);
        if (this.config_ != null) {
            computeStringSize += CodedOutputStream.G(2, getConfig());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasConfig() {
        return this.config_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getLibrary().hashCode();
        if (hasConfig()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getConfig().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2.b.f49577b.d(DynamicOtConfig.class, b.class);
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
        return new DynamicOtConfig();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.library_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.library_);
        }
        if (this.config_ != null) {
            codedOutputStream.L0(2, getConfig());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ DynamicOtConfig(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(DynamicOtConfig dynamicOtConfig) {
        return DEFAULT_INSTANCE.toBuilder().h0(dynamicOtConfig);
    }

    public static DynamicOtConfig parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private DynamicOtConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static DynamicOtConfig parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static DynamicOtConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public DynamicOtConfig getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static DynamicOtConfig parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private DynamicOtConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.library_ = "";
    }

    public static DynamicOtConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static DynamicOtConfig parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static DynamicOtConfig parseFrom(InputStream inputStream) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private DynamicOtConfig(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.library_ = pVar.K();
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            Struct struct = this.config_;
                            Struct.b builder = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) pVar.B(Struct.parser(), f0Var);
                            this.config_ = struct2;
                            if (builder != null) {
                                builder.i0(struct2);
                                this.config_ = builder.I();
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

    public static DynamicOtConfig parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static DynamicOtConfig parseFrom(p pVar) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static DynamicOtConfig parseFrom(p pVar, f0 f0Var) throws IOException {
        return (DynamicOtConfig) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
