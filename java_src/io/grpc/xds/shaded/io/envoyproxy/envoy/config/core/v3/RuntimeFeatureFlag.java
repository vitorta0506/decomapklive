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
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class RuntimeFeatureFlag extends GeneratedMessageV3 implements w0 {
    public static final int DEFAULT_VALUE_FIELD_NUMBER = 1;
    public static final int RUNTIME_KEY_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private BoolValue defaultValue_;
    private byte memoizedIsInitialized;
    private volatile Object runtimeKey_;
    private static final RuntimeFeatureFlag DEFAULT_INSTANCE = new RuntimeFeatureFlag();
    private static final e2<RuntimeFeatureFlag> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<RuntimeFeatureFlag> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public RuntimeFeatureFlag m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new RuntimeFeatureFlag(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements w0 {

        /* renamed from: e  reason: collision with root package name */
        private BoolValue f48109e;

        /* renamed from: f  reason: collision with root package name */
        private q2<BoolValue, BoolValue.b, com.google.protobuf.l> f48110f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48111g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return g.f48233x.d(RuntimeFeatureFlag.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public RuntimeFeatureFlag build() {
            RuntimeFeatureFlag I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public RuntimeFeatureFlag I() {
            RuntimeFeatureFlag runtimeFeatureFlag = new RuntimeFeatureFlag(this, (a) null);
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48110f;
            if (q2Var == null) {
                runtimeFeatureFlag.defaultValue_ = this.f48109e;
            } else {
                runtimeFeatureFlag.defaultValue_ = q2Var.b();
            }
            runtimeFeatureFlag.runtimeKey_ = this.f48111g;
            Q();
            return runtimeFeatureFlag;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public RuntimeFeatureFlag getDefaultInstanceForType() {
            return RuntimeFeatureFlag.getDefaultInstance();
        }

        public b d0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, com.google.protobuf.l> q2Var = this.f48110f;
            if (q2Var == null) {
                BoolValue boolValue2 = this.f48109e;
                if (boolValue2 != null) {
                    this.f48109e = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.f48109e = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
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
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RuntimeFeatureFlag$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        public b v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof RuntimeFeatureFlag) {
                return h0((RuntimeFeatureFlag) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return g.f48232w;
        }

        public b h0(RuntimeFeatureFlag runtimeFeatureFlag) {
            if (runtimeFeatureFlag == RuntimeFeatureFlag.getDefaultInstance()) {
                return this;
            }
            if (runtimeFeatureFlag.hasDefaultValue()) {
                d0(runtimeFeatureFlag.getDefaultValue());
            }
            if (!runtimeFeatureFlag.getRuntimeKey().isEmpty()) {
                this.f48111g = runtimeFeatureFlag.runtimeKey_;
                R();
            }
            z(((GeneratedMessageV3) runtimeFeatureFlag).unknownFields);
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
            this.f48111g = "";
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48111g = "";
            b0();
        }
    }

    /* synthetic */ RuntimeFeatureFlag(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static RuntimeFeatureFlag getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return g.f48232w;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RuntimeFeatureFlag parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RuntimeFeatureFlag parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<RuntimeFeatureFlag> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RuntimeFeatureFlag)) {
            return super.equals(obj);
        }
        RuntimeFeatureFlag runtimeFeatureFlag = (RuntimeFeatureFlag) obj;
        if (hasDefaultValue() != runtimeFeatureFlag.hasDefaultValue()) {
            return false;
        }
        return (!hasDefaultValue() || getDefaultValue().equals(runtimeFeatureFlag.getDefaultValue())) && getRuntimeKey().equals(runtimeFeatureFlag.getRuntimeKey()) && this.unknownFields.equals(runtimeFeatureFlag.unknownFields);
    }

    public BoolValue getDefaultValue() {
        BoolValue boolValue = this.defaultValue_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public com.google.protobuf.l getDefaultValueOrBuilder() {
        return getDefaultValue();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<RuntimeFeatureFlag> getParserForType() {
        return PARSER;
    }

    public String getRuntimeKey() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.runtimeKey_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getRuntimeKeyBytes() {
        Object obj = this.runtimeKey_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.runtimeKey_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.defaultValue_ != null ? 0 + CodedOutputStream.G(1, getDefaultValue()) : 0;
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
            G += GeneratedMessageV3.computeStringSize(2, this.runtimeKey_);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasDefaultValue() {
        return this.defaultValue_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasDefaultValue()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getDefaultValue().hashCode();
        }
        int hashCode2 = (((((hashCode * 37) + 2) * 53) + getRuntimeKey().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return g.f48233x.d(RuntimeFeatureFlag.class, b.class);
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
        return new RuntimeFeatureFlag();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.defaultValue_ != null) {
            codedOutputStream.L0(1, getDefaultValue());
        }
        if (!GeneratedMessageV3.isStringEmpty(this.runtimeKey_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.runtimeKey_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ RuntimeFeatureFlag(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(RuntimeFeatureFlag runtimeFeatureFlag) {
        return DEFAULT_INSTANCE.toBuilder().h0(runtimeFeatureFlag);
    }

    public static RuntimeFeatureFlag parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private RuntimeFeatureFlag(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RuntimeFeatureFlag parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeFeatureFlag parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public RuntimeFeatureFlag getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
    }

    public static RuntimeFeatureFlag parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private RuntimeFeatureFlag() {
        this.memoizedIsInitialized = (byte) -1;
        this.runtimeKey_ = "";
    }

    public static RuntimeFeatureFlag parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static RuntimeFeatureFlag parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static RuntimeFeatureFlag parseFrom(InputStream inputStream) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RuntimeFeatureFlag(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            BoolValue boolValue = this.defaultValue_;
                            BoolValue.b builder = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.defaultValue_ = boolValue2;
                            if (builder != null) {
                                builder.d0(boolValue2);
                                this.defaultValue_ = builder.I();
                            }
                        } else if (L != 18) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.runtimeKey_ = pVar.K();
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

    public static RuntimeFeatureFlag parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static RuntimeFeatureFlag parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static RuntimeFeatureFlag parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (RuntimeFeatureFlag) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}